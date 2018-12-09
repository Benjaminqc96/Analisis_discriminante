require(readxl)
require(MASS)
#################################read the excel book####################################
base<-read_excel("C://Users//lenovo//Documents//ARF veronica//TABLA-AR.xlsx")
################################convert to numerical####################################
base$FRAC<-as.numeric(base$FRAC)
base$R1<-as.numeric(base$R1)
base$R2<-as.numeric(base$R2)
base$R3<-as.numeric(base$R3)
base$R4<-as.numeric(base$R4)
base$R5<-as.numeric(base$R5)
base$R6<-as.numeric(base$R6)
base$R7<-as.numeric(base$R7)
base$R8<-as.numeric(base$R8)
base$R9<-as.numeric(base$R9)
base$R10<-as.numeric(base$R10)
base$R11<-as.numeric(base$R11)
base$R12<-as.numeric(base$R12)
base$R13<-as.numeric(base$R13)
base$R14<-as.numeric(base$R14)
base$R15<-as.numeric(base$R15)
base$R16<-as.numeric(base$R16)
base$R17<-as.numeric(base$R17)
base$R18<-as.numeric(base$R18)
base$R19<-as.numeric(base$R19)
base$R20<-as.numeric(base$R20)
base$R21<-as.numeric(base$R21)
base$R22<-as.numeric(base$R22)
base$R23<-as.numeric(base$R23)
base$R24<-as.numeric(base$R24)
#################################quit the na values####################################
sub<-na.omit(base)
#quit the irrelevant variables
subbase<-sub[,-1]
#generate the linear discriminant analysis
moddisc<-lda(FRAC~.,data = subbase)
########################################results#########################################
#Prior probabilities of groups:
 # 0         1 
#0.5384615 0.4615385 
#Group means:
 # R1        R2         R3       R4       R5       R6        R7        R8        R9       R10       R11       R12
#0 3.05619 0.4309524 0.16428571 1.128095 2.228095 1.747143 0.5052381 0.3323810 0.7776190 0.1619048 0.3333333 0.2942857
#1 3.87000 0.3872222 0.08277778 1.317778 2.435000 1.638889 0.5450000 0.4883333 0.6983333 0.1461111 0.3200000 0.1733333
#R13         R14        R15        R16         R17      R18      R19       R20        R21       R22      R23
#0 0.04857143  0.03714286 0.10523810 0.08476190 0.111904762 1.662857 3.586190 0.4652381 0.05047619 0.5071429 0.997619
#1 0.01000000 -0.09055556 0.02611111 0.02222222 0.006111111 2.262778 3.954444 0.4627778 0.02777778 0.6233333 1.046111
#R24
#0 0.5114286
#1 0.4711111

#Coefficients of linear discriminants:
 # LD1
#R1 0.46309164   R2   -1.26138706 R3    2.29108741 R4   -0.94424960 R5   -0.94624113 R6   -0.26913261
#R7 -2.76720875  R8    0.34758708 R9   -5.27247735 R10   3.89109452 R11   5.51353857 R12  -5.52597628
#R13 39.96223366 R14  -4.47584622 R15  11.12507464 R16 -44.65521488 R17   1.54892280 R18   1.13496036
#R19 -0.03392889 R20  -1.02279425 R21 -19.23354003 R22   1.25545332 R23  -0.07418078 R24  -1.92089323