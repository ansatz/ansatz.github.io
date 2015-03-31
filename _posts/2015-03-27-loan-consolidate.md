---
author:     ansatz
title:		--	
layout:	   post
date:			2015-03-27 10:27:36
tag: finance
---

[private consolidate](http://www.investopedia.com/university/student-loans/student-loans8.asp)
[amortization](https://www.creditkarma.com/calculators/amortization)

# compound 
- interest earns interest
	- amortized (means smooth)
- geometric sum of monthly pay  

\\[ L = P \sum\limits_{j=1}^n \frac{1}{(1+i)^j} \\]   

\\[ L = \frac{P}{i} (1 - \frac{1}{(1-i)^n}) \\]  

\\[ P = \frac{L_i}{1 - \exp^{-n\ln{(i+1)} }} \\]   

where n=months, i=rate 

- total interest \\( I = cN - P \\), where fixed monthly(c), N=init, c=#payments

# payback schemes
- snowball, etc

# calculator  
<!--
original: 40,872.47 + 12,760.96  
current: 45,454.74 + 12,760.96  
interest: 2.88% both  
monthly: $300  
-->
# yo
{% include calculator.html %}
