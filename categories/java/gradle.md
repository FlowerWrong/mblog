## gradle

### gradle

1. [gradle for web application](http://www.gradle.org/docs/current/userguide/web_project_tutorial.html)
2. [gradle jsp servlet](http://www.codedata.com.tw/java/java-tutorial-the-1st-class-1-jdk-versions-and-implementations/)
3. 基於 Servlet、JSP 標準來開放 Web 應用程式，你必須遵守一些實體資源架構，像是編譯出來的 .class 檔案，必須放置在 Web 應用程式目錄中的 /WEB-INF/classes/ 目錄，JAR 檔案必須放置在 /WEB-INF/lib/ 目錄，可直接被 HTTP 客戶端請求的資源（像是 HTML、JavaScript、JSP等原始碼），則可放置在 /WEB-INF/ 以外的其他目錄


### gradel template

```grooy
apply plugin: 'idea'
apply plugin: 'java'
apply plugin: 'war'

task createJavaProject << {
    sourceSets*.java.srcDirs*.each { it.mkdirs() }
    sourceSets*.resources.srcDirs*.each { it.mkdirs() }
}

task createWebProject(dependsOn: 'createJavaProject') << {
    def webAppDir = file("$webAppDirName")
    webAppDir.mkdirs()
}
```
