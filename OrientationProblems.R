#problems for orientaiton in R
#1: Find the sum of numbers divisible by 3 or 5 below 1000
numlist=c(1:1000)
SumNums=0
for (i in numlist)
{
  if (i%%3==0 | i/5%%0 & (i%%3!=0 & i%%5!=0))
  {
    SumNums=SumNums+i
  }
}
for (i in numlist)
{
  if (i%%3==0 & i/5%%0)
  {
    SumNums=SumNums+i
  }
}
print(SumNums)
