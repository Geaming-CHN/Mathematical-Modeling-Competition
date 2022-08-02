# 基于熵权法对TOPSIS模型的修正
- [基于熵权法对TOPSIS模型的修正](#基于熵权法对topsis模型的修正)
  - [概述](#概述)
  - [度量信息量的大小](#度量信息量的大小)
    - [x信息熵的定义](#x信息熵的定义)
  - [熵权法的计算步骤](#熵权法的计算步骤)
    - [Step1](#step1)
    - [Step2](#step2)
    - [Step3](#step3)
  - [原理](#原理)
## 概述

有$n$个要评价的对象，$m$个评价指标的标准化矩阵：

$Z=\begin{bmatrix}z_{11}&z_{12}&\cdots&z_{1m}\\z_{21}&z_{22}&\cdots&z_{2m}\\\vdots&\vdots&\ddots&\vdots\\z_{n1}&z_{n2}&\cdots&z_{nm}\end{bmatrix}$可以用层次分析法给这$m$个评价指标确定权重：$\sum_{j=1}^mw_j=1$

层次分析法最大的缺点：判断矩阵的确定依赖于专家，如果专家的判断存在主观性的话，会对结果产生很大的影响。

**熵权法**是一种客观赋权方法

依据的原理：指标的变异程度越小，所反映的信息量也越小，其对应的权重也应该越低。（客观=数据本身就可以告诉我们权重）

> 越有可能发生的事情，信息量越少；
>
> 越不可能发生的事情，信息量就越多。

## 度量信息量的大小

如果把信息量用字母$I$表示，概率用$p$表示，那么我们可以将它们建立一个函数关系：

![image-20220802155603690](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802155603690.png)

假设$x$表示事件$X$可能发生的某种情况，$p(x)$表示这种情况发生的概率，我们可以定义： $I(x)=\mathrm{ln}(p(x))$因为$0\leq p(x)\leq 1$，所以$I(x)\geq 0$

### x信息熵的定义

假设$x$表示事件$X$可能发生的某种情况，$p(x)$表示这种情况发生的概率，我们可以定义： $I(x)=\mathrm{ln}(p(x))$因为$0\leq p(x)\leq 1$，所以$I(x)\geq 0$

如果事件$X$可能发生的情况分别为：$x_1,x_2,\cdots,x_n$

那么我们可以定义事件$X$的信息熵为：

$\color{red}\Large H(X)=\sum_{i=1}^n[p(x_i)I(x_i)]=-\sum_{i=1}^n[p(x_i)\mathrm{ln}(p(x_i))]$

从上面的公式可以看出，信息熵的本质就是对信息量的期望值。

可以证明的是：

当$p(x_1)=p(x_2)=\cdots=p(x_n)=\frac{1}{n}$时，$H(x)$取最大值，此时$H(x)=\mathrm{ln}n$

对于熵权法而言，因为我们关注的是已有的信息，所以熵越大，信息量越小。

## 熵权法的计算步骤

### Step1

判断输入的矩阵中是否存在负数，如果有则要重新标准化到非负区间。

![image-20220802161558767](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802161558767.png)

### Step2

计算第$j$项指标下第$i$个样本所占的比重，并将其看作相对熵计算中用到的概率

![image-20220802161652425](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802161652425.png)

### Step3

计算每个指标的信息熵，并计算信息效用值，并归一化得到每个指标的熵权

![image-20220802173251268](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802173251268.png)

## 原理

![image-20220802173317404](https://cdn.jsdelivr.net/gh/GEAMING-CHN/images/blogimg/%E6%95%B0%E6%A8%A1/image-20220802173317404.png)“”“”