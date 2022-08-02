# TOPSIS法（优劣解距离法）
- [TOPSIS法（优劣解距离法）](#topsis法优劣解距离法)
  - [概述](#概述)
  - [构造评分](#构造评分)
  - [统一指标类型](#统一指标类型)
  - [标准化处理](#标准化处理)
  - [如何计算得分？](#如何计算得分)
  - [总结](#总结)
    - [第一步：将原始矩阵正向化](#第一步将原始矩阵正向化)
    - [第二步：正向化矩阵标准化](#第二步正向化矩阵标准化)
    - [第三步：计算得分并归一化](#第三步计算得分并归一化)
  - [模型拓展](#模型拓展)
  - [练习：](#练习)
## 概述

TOPSIS法（Technique for Order Preference by Similarity to Ideal Solution）逼近理想解排序法，国内常简称为优劣解距离法

TOPSIS法是一种常用的综合评价方法，其能充分利用原始数据的信息，其结果能精确地反映各评价方案之间的差距。

## 构造评分

> <table>     
> <tr>        
>  <td><b>姓名</bb></td>         
>  <td><b>成绩</bb></td>     
> </tr>     
> <tr>
> <td>小明</td> 
> <td>89</td>    
> </tr>
> <tr>
> <td>小王</td> 
> <td>60</td>    
> </tr>
> <tr>
> <td>小张</td> 
> <td>74</td>    
> </tr>
> <tr>
> <td>清风</td> 
> <td>99</td>    
> </tr>
> </table>
>
> 请为这四名同学进行评分，该评分能合理的描述其高数成绩的高低。
>
> 构造方法一：$\Large\frac{x-min}{max-min}$，之后进行归一化
>
> 构造方法二：$\Large\frac{x-0}{100-0}$，之后进行归一化
>
> 获得表格如下
> <table>     
> <tr>        
>  <td><b>姓名</bb></td>         
>  <td><b>成绩</bb></td>     
>      <td><b>Method1</bb></td>     
>      <td><b>Method2</bb></td>     
> </tr>     
> <tr>
> <td>小明</td> 
> <td>89</td>   
>     <td>0.35</td>   
>     <td>0.28</td>   
> </tr>
> <tr>
> <td>小王</td> 
> <td>60</td>    
>         <td>0</td>   
>     <td>0.19</td>   
> </tr>
> <tr>
> <td>小张</td> 
> <td>74</td>    
>         <td>0.17</td>   
>     <td>0.23</td>   
> </tr>
> <tr>
> <td>清风</td> 
> <td>99</td>    
>         <td>0.48</td>   
>     <td>0.30</td>   
> </tr>
> </table>
>
> 为什么最后采用方法一？
>
> 1. 比较的对象一般要远大于两个
> 2. 比较的指标也往往不只是一个方面的，例如成绩、工时数、课外竞赛得分等
> 3. 有很多指标不存在理论上的最大值和最小值，例如衡量经济增长水平的指标：GDP增速
>
> 最后：构造计算评分的公式：$\Large\frac{x-min}{max-min}$

## 统一指标类型

极大型指标（效益型指标）：越大（高）越好

极小型指标（成本型指标）：越少（小）越好

将所有的指标转化为极大型称为$\Large\color{red}{指标正向化}$

> <table>     
> <tr>        
>  <td><b>姓名</bb></td>         
>  <td><b>成绩</bb></td>     
>      <td><b>与他人争吵的次数</bb></td>     
>      <td><b>正向化后的争吵次数</bb></td>     
> </tr>     
> <tr>
> <td>小明</td> 
> <td>89</td>   
>     <td>2</td>   
>     <td>1</td>   
> </tr>
> <tr>
> <td>小王</td> 
> <td>60</td>    
>         <td>0</td>   
>     <td>3</td>   
> </tr>
> <tr>
> <td>小张</td> 
> <td>74</td>    
>         <td>1</td>   
>     <td>2</td>   
> </tr>
> <tr>
> <td>清风</td> 
> <td>99</td>    
>         <td>3</td>   
>     <td>0</td>   
> </tr>
> <tr>
> <td>指标类型</td> 
> <td>极大型</td>    
>         <td>极小型</td>   
>     <td>极大型</td>   
> </tr>
> </table>

极小型指标转换为极大型指标的公式：$max-x$

## 标准化处理

为了$\color{red}{消去不同指标量纲的影响，}$需要对已经正向化的矩阵进行$\color{red}{标准化处理}$。

**标准化处理的计算公式**

假设有$n$个要评价的对象，$m$个评价指标（已经正向化了）构成的正向化矩阵如下：

$X=\begin{bmatrix}x_{11}&x_{12}&\cdots&x_{1m}\\x_{21}&x_{22}&\cdots&x_{2m}\\\vdots&\vdots&\ddots&\vdots\\x_{n1}&x_{n2}&\cdots&x_{nm}\end{bmatrix}$

那么，对其标准化的矩阵记为$Z$，$Z$中的每一个元素：$z_{ij}=x_{ij}/\sqrt{\sum_{i=1}^nx_{ij}^2}$

> $\begin{bmatrix}89&1\\60&3\\74&2\\99&0\end{bmatrix}$经过标准化后就变成了$\begin{bmatrix}0.5437&0.2673&\\ 0.3665&0.8018&\\ 0.4520&0.5345&\\ 0.6048&0.0000&\\\end{bmatrix}$

## 如何计算得分？

> <table>     
> <tr>        
>  <td><b>姓名</bb></td>         
>  <td><b>成绩</bb></td>     
>      <td><b>正向化后的争吵次数</bb></td>     
> </tr>     
> <tr>
> <td>小明</td> 
> <td>0.5437</td>   
>     <td>0.2673</td>   
> </tr>
> <tr>
> <td>小王</td> 
> <td>0.3665</td>    
>         <td>0.8018</td>   
> </tr>
> <tr>
> <td>小张</td> 
> <td>0.4520</td>    
>     <td>0.5345</td>   
> </tr>
> <tr>
> <td>清风</td> 
> <td>0.6048</td>    
>     <td>0</td>   
> </tr>
> <tr>
>     <td><b>指标类型</b></td> 
> <td>极大型</td>    
>     <td>极大型</td>   
> </tr>
> </table>

当我们只有一个指标时：构造计算评分的公式：$\Large\color{red}{\frac{x-min}{max-min}}\color{black}=\frac{x-min}{(max-x)+(x-min)}$

可以视作：$\Large\color{red}{\frac{x与最小值的距离}{x与最大值的距离+x与最小值的距离}}$

![image-20220801232044642](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220801232044642.png)

最后对得分进行归一化，从而进行排序。

> ![image-20220801235254474](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220801235254474.png)

## 总结

![image-20220801235320876](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220801235320876.png)

### 第一步：将原始矩阵正向化

最常见的四种指标：

| 指标名称             | 指标特点         | 例子                     |
| -------------------- | ---------------- | ------------------------ |
| 极大型（效益型）指标 | 越大（多）越好   | 成绩、GDP增速、企业利润  |
| 极小型（成本型）指标 | 越小（少）越好   | 费用、坏品率、污染程度   |
| 中间型指标           | 越接近某个值越好 | 水质量评估时的PH值       |
| 区间型指标           | 落在某个区间最好 | 体温、水中植物性营养物量 |

所谓的将原始矩阵正向化，就是要将所有的指标类型统一转化为极大型指标（转换的函数形式可以不唯一）

- 极小型指标->极大型指标
  $max-x$，如果所有的元素均为正数，那么也可以使用$\Large\frac{1}{x}$
- 中间型指标->极大型指标
  中间型指标：指标值既不要太大也不要太小，取某特定值最好（如水质量评估PH值）
  $\{x_i\}$是一组中间型指标序列，且最佳的数值为$x_{best}$，那么正向化的公式如下：
  $\Large M=max\{|x_i-x_{best}|\},\widetilde{x}=1-\frac{|x_i-x_{best}|}{M}$
  ![image-20220802003840064](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802003840064.png)
- 区间型指标->极大型指标
  区间型指标：指标值落在某个区间内最好，例如人的体温在36°~37°这个区间比较好
  $\{x_i\}$是一组区间型指标序列，且最佳的区间为$[a,b]$，那么正向化的公式如下：
  $\Large M=max\{a-min\{x_i\},max\{x_i\}-b\},\widetilde{x}=\left\{\begin{aligned}&1-\frac{a-x_i}{M},&x_i<a\\&1,&a\leq x_i\leq b\\&1-\frac{x_i-b}{M},&x_i>b\end{aligned}\right.$
  ![image-20220802004630092](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802004630092.png)

### 第二步：正向化矩阵标准化

![image-20220802004706462](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802004706462.png)

### 第三步：计算得分并归一化

![image-20220802004744871](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802004744871.png)

## 模型拓展

![image-20220802004849323](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802004849323.png)

![image-20220802004855823](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802004855823.png)

## 练习：

![image-20220802005342324](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802005342324.png)