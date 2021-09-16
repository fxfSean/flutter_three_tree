# Flutter中三棵树的理解

## 哪三棵

### Widget

Widget 是用户页面的描述，表示了Element的配置信息，Flutter页面都是由各种个样的Widget组合声明成的。Widget本身是不可变的immutable，注解如下：

```dart
@immutable
abstract class Widget extends DiagnosticableTree {}
```

这也就意味着，所有它直接声明或继承的变量都必须为final类型的。如果想给widget关联一个可变的状态，考虑使用StatefulWidget，它会通过[StatefulWidget.createState]创建一个State对象，然后，每当它转化成一个element时会合并到树上。

子类：

<img src="/Users/fuxiaofang/Documents/分享/flutter_three_tree/widget-类图.png" alt="image-20210916150046277" style="zoom:50%;" />

StatelessWidget、StatefulWidget我们很熟悉是用来编写页面和组件的，那另外三个都是做什么用的呢？

* RenderObjectWidget，从名字上就能看出它是一个Widget，然后和实际渲染对象RenderObject有撇不清的关系。它提供了RenderObjectElement的配置信息，其中包装了RenderObject。也就是从页面上编写的StatelessWidget和StatefulWidget在递归的build过程中，会最终返回实际可渲染的Widget对象，也就是RenderObjectWidget，那么这个转化关系是一一对应的吗，其实不是的，后边再具体分析
* PreferredSizeWidget，一个返回它自身想要大小的组件，如果它在布局过程中是不受限制的，例如，AppBar和TabBar
* ProxyWidget，代理组件，提供一个子组件，而不是自己创建，例如，InheritedWidget和ParentDataWidget



### Element

元素树，是Widget在具体位置的实例化，它负责控制Widget的生命周期，持有了widget实例和renderObject实例，它和Widget继承自同一个类，DiagnosticableTree可诊断树，并且实现了BuildContext类。

Element有两种：

* ComponentElement，其他elements的宿主，它本身不包含RenderObject，而由它持有的element节点包含，像StatelessWidget 和StatefulWidget 中分别创建的StatelessElement和StatefulElement都是继承自ComponentElement
* RenderObjectElement，参与layout或者绘制阶段的元素

<img src="/Users/fuxiaofang/Documents/分享/flutter_three_tree/img-element.png" alt="image-20210916173504847" style="zoom:50%;" />

### RenderObject

渲染树中的每个节点基类是RenderObject，它定义了布局和绘制的抽象模型。每一个RenderObjects又一个parent，和一个插槽parentData，父级的RenderObject可以在其中存储孩子的具体数据，例如，child的位置信息。

## 对应关系

## 串联过程

## 有什么作用

## 开发中注意什么

## 总结

