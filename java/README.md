# My Frequently Forgotten Facts (FFFs)
------
## 1. Object
> 在Java中，只有基本类型（primitive types）不是对象，如 int, char, boolean。

``` java
Object obj;
obj = new String(); //ok
obj = new int[10]; //ok
```

## 2. 访问权限

### 各修饰符访问权限如下表：
|Modifier|Class|Package|Out Subclass|Other|Total|
|:--:|:--:|:--:|:--:|:--:|:--:|
|`private`|Y|N|N|N|1|
|`default`|Y|Y|N|N|2|
|`protected`|Y|Y|Y|N|3|
|`public`|Y|Y|Y|Y|4|

[See doc here.](https://docs.oracle.com/javase/tutorial/java/javaOO/accesscontrol.html)

## 3. Type[] 和 ArrayList<Type>
```
Type[] array = new Type[size]; //size大小
ArrayList<Type> = new ArrayList<>(); //动态增长
```
将 `Type[]` 替换成 `ArrayList<Type>` 要注意的变化：
* 不必指出数组的大小
* 使用 `add` 将任意多的元素添加到数组中
* 使用 `size()` 替代 `length` 计算元素的数目
* 使用 `a.get(i)` 替代 `a[i]` 访问元素
