```java
package WordCount;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class CountReduce extends Reducer<Text, IntWritable, Text,IntWritable> {


    private IntWritable outV = new IntWritable();

    @Override                           //values并不是迭代器
    protected void reduce(Text key, Iterable<IntWritable> values, Reducer<Text, IntWritable, Text, IntWritable>.Context context) throws IOException, InterruptedException {

        int sum = 0;


        for (IntWritable value : values) {
            //由于value是IntWritable类型，所以使用value.get()获取int
            sum+=value.get();
        }
        outV.set(sum);
        //写出
        context.write(key,outV);
    }
}
```