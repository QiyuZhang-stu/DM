#set page(
  paper:"a4",
  margin:(top:2cm, bottom:2cm, left:2cm,right:2cm),
)
#set text(font:"SimSun",size:12pt)
#show heading.where(level:1):it => block(width:100%)[
  #set align(center)
  #set text(
    size:18pt,
    weight:"bold",
    // underline:line(
    //   stroke: red + 1pt,  
    //   cap: "round"        
    // )
  )
  #it.body
  // #box(fill:luma(94.9%, 74.1%),inset:2pt,it.body)
]
= 离散数学基础笔记（以模块划分）
#v(3em)
#show heading.where(level:2):it => block(width:100%)[
  #set align(center)
  #set text(
    size:16pt,
    weight:"bold",
  )
  #it.body
]
== 模块1：数论  
#v(2em)
#show heading.where(level:3):it => block(width:100%)[
  #set text(
    size:14pt,
    weight:"bold",
  )
  #it.body
]
=== 一·基本概念
#v(1em)

1.平凡因子；1和本身      

#h(1em)真因子

2.带余除法：$a=q b+r$ (其中$0<=r<|b|$)

3.最大公因子：$gcd(a,b)$

#h(1em)最小公倍数：$lcm(a,b)$

4.梅森素数：形如$M_n=2^n-1$的素数

5.$[a]_m$或$[a]$以及$Z_m$：$a$的模$m$等价类，$[a]_m = {b | b equiv a (mod m)}$，整数集Z在模m下的商集$Z_m$，例如$Z_5={[0],[1],[2],[3],[4]}$

6.一次同余方程：$a x equiv b (mod m)$，其中$a,b,m$为整数，$m>0$

7.a的模m逆元：$a^(-1)$，满足$a a^(-1) equiv 1 (mod m)$

8.欧拉函数：$phi(n)$，表示小于等于n且与n互素的正整数个数，注意$phi(1)=1$
#v(2em)
=== 二·公式定理
#v(1em)
1.算术基本定理：设$a>1$，则$a=p_1^r_1p_2^r_2...p_k^r_k$，其中$p_k$为互异的素数，$r_k$为正整数，则不
  
  考虑顺序时表示唯一

2.正因子个数：$d(n)=(r_1+1)(r_2+1)...(r_k+1)$

3.有无穷多个素数：$ lim_(n->oo) frac(pi(n),n/ln(n))  = 1 $或$ pi(n) ~ frac(n,ln(n)) $

4.埃拉托色尼筛法：见例2

5.辗转相除法（欧几里得算法）：$gcd(a,b)=gcd(b,a mod b)$

6.贝祖定理：若$a,b$不全为0，则存在$x,y$使得$gcd(a,b)=a x+b y$，其中$x,y$为整数

7.a,b互素的充要条件：存在整数x，y使得$x a+y b=1$

8.模运算的性质：
   - 若 $a equiv b (mod m),c equiv d(mod m)$，则 $a #sym.plus.minus c equiv b #sym.plus.minus d(mod m),a c equiv b d(mod m),a^k equiv b^k (mod m)$,其中k为自然数
   - 若 $d>=1$，则 $a equiv b (mod m) #sym.arrow.l.r.double d a equiv d b(mod d m)$
   - 若 $gcd(c,m)=1$，则 $a equiv b(mod m) #sym.arrow.l.r.double c a equiv c b(mod m)$

9.一次同余方程：$a x equiv b (mod m)$，其中$a,b,m$为整数，$m>0$，$gcd(a,m)=1$时有唯一解$x$，否则有解当且仅当$gcd(a,m)$整除$b$，此时解的个数为$gcd(a,m)$

10.$a^(-1)$存在 $#sym.arrow.l.r.double gcd(a,m)=1$，且若存在则唯一（a的任意两个模m逆都模m同余）
   
11.若n的素因子分解式 $n=p_1^alpha_1 p_2^alpha_2...p_k^alpha_k$，则 $phi(n)=n (1-frac(1,p_1)) (1-frac(1,p_2))...(1-frac(1,p_k))$

12.欧拉定理：若 $gcd(a,n)=1$，则 $a^phi(n) equiv 1 (mod n)$

13.费马小定理（可视为欧拉定理在质数情况的推论）：

- 若 $p$为素数，$a$为整数，且 $gcd(a,p)=1$，则 $a^(p-1) equiv 1 (mod p)$
- 若 $p$为素数，$a$为整数，则 $a^p equiv a (mod p)$
#v(2em)
=== 三.精选例题
#v(1em)
1.$20!$的二进制表示从最低位起有多少个连续的0？

   解：$20! =2^18*3^8*5^4*7^2*11^1*13^1*17^1*19^1$，所以有18个连续的0。

2.求100以内的素数。

   解：$sqrt(100)=10$，10以内素数：2，3，5，7，用他们删所有能被他们整除的数，剩下的就是素数。

3.求168,300最大公因数，并表示成线性组合
   
   解：$168=2^3*3*7$，$300=2^2*3*5^2$，所以$gcd(168,300)=2^2*3=12$
    而$ 300=168+132 $
    $ 168=132+36 $
    $ 132=36*3+24 $
    $ 36=24+12 $
    $ 24=12*2+0 $

    则$12=36-24=36-(132-36*3)=...=9*168-5*300$

4.$3^455$的个位数是？

    解：
    法一：$3^1=3$，$3^2=9$，$3^3=27$，$3^4=81$，$3^5=243$，$3^6=729$，所以周期为4，余数为3，所以个位数是7。

    法二：设为$x$，则$3^455 equiv x(mod 10)$，又$3^4 equiv 1(mod 10)$，则$3^(4*113) equiv 1^113 (mod 10)$，又$3^3 equiv 7(mod 10)$，两式相乘可得$3^455 equiv 7(mod 10)$

5.解方程 $8 x equiv 4(mod 6)$

    解：$gcd(8,6)=2$，整除4，所以有2解，取模6等价类代表$-2,-1,0,1,2,3$，代入得$x$的解为$2,-1$，即 $x equiv 2 (mod 6)$ 或 $x equiv -1 (mod 6)$
  
  【错解】全部除以2

#v(2em)
=== 四.课后习题
#v(1em)
