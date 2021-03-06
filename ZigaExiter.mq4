//+------------------------------------------------------------------+
//|                                                   ZigaExiter.mq4 |
//|                        Copyright 2021, MetaQuotes Software Corp. |
//|                                             https://t.me/gamakiv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Software Corp."
#property link      "https://t.me/gamakiv"
#property version   "1.00"
#property description "Получает значения зигзага"
#property strict

extern string ZigZag_Indicator = "ZigZag parameters";
extern bool UseZigZagForExit = True;
extern int InpDepth=12;     // Depth
extern int InpDeviation=5;  // Deviation
extern int InpBackstep=3;   // Backstep

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---  
   if(CheckNewBar() == True)
      {
        
         Print("-----------------------");
         Print("zZiga = ", NormalizeDouble(FindClosestZZ(), 4));
    
      }
   
   
  }
//+------------------------------------------------------------------+


//True = new bar, False = old bar
bool CheckNewBar()                              
   {                                             
      static datetime Prev_Time=0;
      if (Prev_Time==0)
        {
           Prev_Time=Time[0];
           return(false);
        }
   
      if(Prev_Time!=Time[0])
        {
         Prev_Time=Time[0];
         return(true);        // Поймался новый бар
        }
     return(false);
   }
   
double FindClosestZZ()
  {
  int i;
  double zzh;
  for (i=0;i<1000;i++)
    {
    zzh=iCustom(Symbol(),Period(),"ZigZag", InpDepth, InpDeviation, InpBackstep, 0, i); 
    if (zzh!=0)
      return(zzh);
    }
  return(0);
  }