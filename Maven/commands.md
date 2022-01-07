- To specify sonar custom settings 

``` mvn clean sonar:sonar -Dsonar.host.url=http://192.168.56.101:9000 -Dsonar.login=admin -Dsonar.password=admin ```

- To get dependency tree of your project 

``` mvn dependency:tree ```
- To get all plugins used of your project 

```mvn  -B dependency:resolve-plugins```
- To get latest version of plugin 

```mvn versions:display-plugin-updates```
- Assume you need to use different local repository

```mvn install -Dmaven.repo.local=/alternate/repo/location```
- If you want to skip test cases 

```mvn clean install -Dmaven.test.skip=true –U```
