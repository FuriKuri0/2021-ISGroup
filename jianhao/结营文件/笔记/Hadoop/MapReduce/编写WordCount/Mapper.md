```java
package WordCount;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class CountMapper extends Mapper<LongWritable, Text,Text, IntWritable> {

    private  Text out = new Text();
    private IntWritable outK = new IntWritable(1);

    @Override
    protected void map(LongWritable key, Text value, Mapper<LongWritable, Text, Text, IntWritable>.Context context) throws IOException, InterruptedException {
        //获取一行
        //jiao jiao
        String line = value.toString();

        //切割放入数组
        //jiao
        //jiao
        String[] words = line.split(" ");

        //循环写出
        for (String word : words) {
            //将String类型转成Text
            out.set(word);
            context.write(out,outK);

        }

    }

}
```