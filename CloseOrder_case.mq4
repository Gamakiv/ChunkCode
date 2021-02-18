         {
            for(int i = OrdersTotal() - 1; i>=0; i--)
               {
                  if(OrderSelect(i,SELECT_BY_POS, MODE_TRADES))
                     {
                        if(OrderMagicNumber() == Magic && OrderType() == OP_SELL)
                           {
                              OrderClose(OrderTicket(), OrderLots(), Ask, Slippage, Aqua);
                           }
                     }
               }            
