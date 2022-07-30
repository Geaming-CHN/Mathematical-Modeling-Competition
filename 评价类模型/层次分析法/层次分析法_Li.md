

# 层次分析法（AHP）

The analytic hierarchy process：建模比赛中最基础的模型之一，其主要用于解决评价类问题

> 例：选择那种方案最好，哪位运动员或者员工的表现更优秀

## 概述

解决评价类问题，首先是想到以下三个问题：

1. 我们评价的目标是什么？

2. 我们为了达到这个目标有哪几种可选的方案？

3. 评价的准则或者说指标是什么？（根据什么东西来评价好坏）

   ->题目未提供相关数据支撑，需要查阅相关的资料

一般而言，前两个问题的答案是显而易见的，第三个问题的答案需要我们根据题目中的**背景材料、常识以及网上搜集到的参考资料**进行结合，从中筛选出最合适的指标。

> 例：小明同学想出去旅游，在查阅了网上的攻略后，他初步选择了A、B和C三地之一作为目标景点，请你确定评价指标、形成评价体系来为小明同学选择最佳的方案。
>
> 假如我们查询了资料后选择了以下五个指标：
>
> ​	景点景色+旅游花费+居住环境+饮食情况+交通便利程度->得到表格如下
>
> |      | 指标权重 | A    | B    | C    |
> | ---- | -------- | ---- | ---- | ---- |
> | 景色 |          |      |      |      |
> | 花费 |          |      |      |      |
> | 居住 |          |      |      |      |
> | 饮食 |          |      |      |      |
> | 交通 |          |      |      |      |

问题：一次性考虑这多个个指标之间，往往考虑不周。

解决方案：两个两个指标进行比较，最终根据两两比较的结果来推算出权重（分而治之）。

层次分析法：用**1-9表示重要程度（见下表）**，这里的重要性有时候可以理解成为满意度更方便理解

| 标度       | 含义                                           |
| ---------- | ---------------------------------------------- |
| 1          | 表示两个因素相比，具有同样重要性               |
| 3          | 表示两个因素相比，一个因素比另一个因素稍显重要 |
| 5          | 表示两个因素相比，一个因素比另一个因素明显重要 |
| 7          | 表示两个因素相比，一个因素比另一个因素强烈重要 |
| 9          | 表示两个因素相比，一个因素比另一个因素极端重要 |
| 2、4、6、8 | 上述两相邻判断的中值                           |
| 倒数       | A和B相比如果标度为3，那么B和A相比就是1/3       |

## 判别矩阵

> 根据小明的回答，我们获得了如下表格
>
> <table border="1">     <tr>         <td></td><td>景色</td>         <td>花费</td><td>居住</td><td>饮食</td><td>交通</td>     </tr>     <tr>         <td>景色</td>         <td>1</td><td>1/2</td><td>4</td><td>3</td> <td>3</td>    </tr><tr>         <td>花费</td><td>2</td>         <td>1</td><td>7</td><td>5</td><td>5</td>     </tr><tr>         <td>居住</td><td>1/4</td>         <td>1/7</td><td>1</td><td>1/2</td><td>1/3</td>     </tr><tr>         <td>饮食</td><td>1/3</td>         <td>1/5</td><td>2</td><td>1</td><td>1</td>     </tr><tr>         <td>交通</td><td>1/3</td>         <td>1/5</td><td>3</td><td>1</td><td>1</td>     </tr></table>

总结：上面这个表为一个5×5的方阵，我们记为A，对应的元素为$a_{ij}$。
这个方阵有如下特点：

1. $a_{ij}$表示的意义是，与指标$j$相比，$i$的重要程度。
2. 当$i=j$时，两个指标相同，因此同等重要记为1，这就解释了主对角线元素为1
3. $a_{ij}>0$且满足$a_{ij}\times a_{ji}=1$（我们称满足这一条件的矩阵为**正互反矩阵**）

实际上，上面这个矩阵就是层次分析法中的**判别矩阵**

> 如何计算A，B与C在各方面所占的权重（得分）？
>
> 查询相关资料获得判别矩阵如下：
>
> <img src="https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220729225350343.png" alt="image-20220729225350343" style="zoom:50%;" />
>
> 一个可能出问题的地方：判别矩阵不是一致矩阵
>
> ![image-20220729225500211](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220729225500211.png)

一致矩阵：

- 若矩阵中每个元素$a_{ij}>0$且满足$a_{ij}\times a_{ji}=1$，则我们称该矩阵为**正互反矩阵**。
- 在层次分析法中，我们构造的判别矩阵均是正互反矩阵。
- 若正互反矩阵满足$a_{ij}\times a_{ji}=a_{ik}$，则我们称其为**一致矩阵**。

$\Large\color{red}{\bold{注意：在使用矩阵判断矩阵求权重之前，必须对其进行一致性检验}}$

## 一致性检验

一致性检验：检验我们构造的判别矩阵和一致矩阵是否有太大的差别

<img src="https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220729230057788.png" alt="image-20220729230057788"  />

<img src="https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220729230105018.png" alt="image-20220729230105018"  />

1. 计算**一致性指标CI**
   $\large CI=\frac{\lambda_{max}-n}{n-1}$
2. 查找对应的**平均随机一致性指标RI**
   ![image-20220729230234179](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220729230234179.png)
3. 计算**一致性比例CR**
   $\large CR=\frac{CI}{RI}$
   如果$CR<0.1$，则可以认为判别矩阵的一致性可以接受；否则需要对判别矩阵进行修正。

![image-20220729230416050](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220729230416050.png)

## 判别矩阵求权重

### 方法1：算术平均法求权重

![image-20220730164519772](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730164519772.png)

![image-20220730164533996](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730164533996.png)

### 方法2：几何平均法求权重

![image-20220730164619264](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730164619264.png)

### 方法3：特征值法求权重

![image-20220730164646929](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730164646929.png)

## 汇总结果得到权重矩阵

> ![image-20220730164901939](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730164901939.png)

## 计算各方案的得分

> ![image-20220730164922319](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730164922319.png)

## $\large\color{red}{\bold{总结}}$

![image-20220730165049946](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730165049946.png)

### 层次分析法第一步

分析系统中各因素之间的关系，建立系统的$\large\color{red}{\bold{递阶层次结构}}$

![image-20220730165236123](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730165236123.png)

### 层次分析法第二步

对于同一层次的各元素关于上一层次中某一准则的重要性进行两两比较，构造两两比较矩阵（判断矩阵）。

![image-20220730165447567](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730165447567.png)

### 层次分析法第三步

![image-20220730165630972](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730165630972.png)

![image-20220730165650604](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730165650604.png)

### 层次分析法第四步

根据权重矩阵计算得分，并进行排序。

### 层次分析法的一些局限性

![image-20220730165759567](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730165759567.png)

## 模型拓展

![image-20220730170028380](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730170028380.png)

![image-20220730170040428](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220730170040428.png)