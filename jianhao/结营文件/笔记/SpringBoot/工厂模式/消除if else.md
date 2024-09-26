接口创建方法：

```java
@Service
public interface MoveService {

    String doOperation(Map<String,Object> map);
}
```

实现类实现方法：

```java
@Component("1")
@Slf4j
public class SignInImp implements MoveService {
```

```java
@Component("2")
@Slf4j
public class RegisterImp implements MoveService {
```

创建工厂模式

```java
@Service
@Slf4j
public class MoveServiceFactory {
    @Autowired
    Map<String, MoveService> MoveService = new ConcurrentHashMap<String, MoveService>();

        public MoveService get(Object key) {
            log.debug(MoveService.toString());
            MoveService moveService = MoveService.get(key);
            if(moveService == null){
                throw new RuntimeException("no moveService defined");
            }
            return moveService;
        }
}
```

## 实现原理：

在spring扫描bean时，工厂类MoveServiceFactory负责创建策略工程，这个`Map<String,MoveService>`会将初始化的所有MoveService自动加载到Map中