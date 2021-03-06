//+------------------------------------------------------------------+
//|                                                      Strelka.mq4 |
//|                                          Copyright 2020, GamaKiv |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, GamaKiv"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

#property description "Скрипт рисует значки Buy | Sell в окне графика."

void OnStart()
  {
//---
   ObjectCreate("Strelka_Sell",OBJ_LABEL,0,0,0,0,0);
   
   //установить угол привязки
   ObjectSet("Strelka_Sell",OBJPROP_CORNER, CORNER_RIGHT_UPPER);
   
   //установка 
   ObjectSet("Strelka_Sell",OBJPROP_XDISTANCE,50);
   ObjectSet("Strelka_Sell",OBJPROP_YDISTANCE,50);
 
   // используем значки из шрифта Wingdings - 16 = размер
   ObjectSetText("Strelka_Sell",CharToStr(233),16,"Wingdings",DodgerBlue);

   
  }
//+------------------------------------------------------------------+
