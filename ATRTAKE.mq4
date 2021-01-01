//+------------------------------------------------------------------+
//|                                                      ATRTAKE.mq4 |
//|                                          Copyright 2020, GamaKiv |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Gamakiv "
#property link      "https://t.me/gamakiv"
#property version   "1.01"
#property strict
#property script_show_inputs

extern string Period_ATR = "14";
double GetATR; 

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
    double GetATR; 
    double GetATR_clear;
    double StopLoss_Sell;
    double StopLoss_By;
    double GetASK;
    double GetBID;
    
    GetATR = DoubleToStr((iATR(NULL,0,Period_ATR,0) * 2),5);
    GetATR_clear = DoubleToStr(iATR(NULL,0,Period_ATR,0),5);
    GetASK = MarketInfo(Symbol(),MODE_ASK);
    GetBID = MarketInfo(Symbol(),MODE_BID);
    
    
    Alert("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    Alert("ASK - ", MarketInfo(Symbol(),MODE_ASK));
    Alert("BID - ", MarketInfo(Symbol(),MODE_BID));
    Alert("ATR x 2 - ", GetATR);
    Alert("ATR Clear - ", GetATR_clear);
    Alert("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    
    StopLoss_Sell = GetBID + GetATR;
    StopLoss_By = GetASK - GetATR;
    
    Alert("StopLoss for SALE - ", DoubleToStr((StopLoss_Sell), 5));
    Alert("StopLoss for BY - ", DoubleToStr((StopLoss_By), 5));
    
   
   


  }
//+------------------------------------------------------------------+
