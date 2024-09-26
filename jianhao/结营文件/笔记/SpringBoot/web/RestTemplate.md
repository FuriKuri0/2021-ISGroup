# RestTemplate

### RestTemplate是Spring提供的用于发送HTTP请求的客户端工具

实现方法：

```
    public <T> T getForObject(String url, Class<T> responseType, Object... uriVariables){}
    public <T> T getForObject(String url, Class<T> responseType, Map<String, ?> uriVariables)
    public <T> T getForObject(URI url, Class<T> responseType)
```

