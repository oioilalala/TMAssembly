states =              {s,start,output,accept,load,c,xleft,yleft,cright,cnext,add,add1,move,Mx,My,Mxx,Myy,9,10}
input_alphabet =      {$,:,L,x,M,y,A,0,1}
tape_alphabet_extra = {_,Z}
start_state =        s 
accept_state =       accept
reject_state=        9
num_tapes=        4
delta =
 s,$___->start,$__$,RSSS;
 start,L__$->load,L__$,RSSR;
 load,0___->load,0__0,RSSR;   //$L________:
 load,1___->load,1__1,RSSR;
 
 //3,0___->3,0__0,RSSR;
 //3,1___->3,1__1,RSSR;
 load,:___->c,:___,SSSL;
 c,:__0->c,:__0,SSSL;
 c,:__1->c,:__1,SSSL;
 c,:$$0->c,:$$0,SSSL;
 c,:$$1->c,:$$1,SSSL;
 c,_$$0->cnext,_$$0,SSSL;
 c,_$$1->cnext,_$$1,SSSL;
 c,L$$0->cnext,L$$0,SSSL;
 c,L$$1->cnext,L$$1,SSSL;
 c,A$$0->cright,A$$0,SRRS;
 c,A$$1->cright,A$$1,SRRS;
 cnext,_$$0->cnext,_$$0,SSSL;
 cnext,_$$1->cnext,_$$1,SSSL;
 //cnext,_$$$->output,_$$$,SSSR;
 
 cnext,L$$0->cnext,L$$0,SSSL;
 cnext,L$$1->cnext,L$$1,SSSL;
 c,:__$->cnext,:__$,RSSS;
 cnext,___$->output,___$,SSSR;
 output,___0->accept,___0,SSSS;
 output,___1->accept,___1,SSSS;
 cnext,_$$$->output,_$$$,SSSR;
 output,_$$0->accept,_$$0,SSSS;
 output,_$$1->accept,_$$1,SSSS;
 cnext,__$$->output,__$$,SSSR;
 output,__$0->accept,__$0,SSSS;
 output,__$1->accept,__$1,SSSS;
 cnext,_$_$->output,_$_$,SSSR;
 output,_$_0->accept,_$_0,SSSS;
 output,_$_1->accept,_$_1,SSSS;
 
 
 
 cnext,M__$->move,M__$,RSSS;
 move,x__$->Mx,x$_$,SSSS;
 Mx,x$_$->Mxx,x$_$,SRSR;
 Mxx,x__0->Mxx,x0_0,SRSR;
 Mxx,x__1->Mxx,x1_1,SRSR;
 
 move,y__$->My,y_$$,SSSS;
 move,y_$$->My,y_$$,SSSS;
 My,y_$$->Myy,y_$$,SSRR;
 Myy,y__0->Myy,y_00,SSRR;
 Myy,y__1->Myy,y_11,SSRR;
 
 
 Myy,y___->c,y___,RSSL;
 Mxx,x___->c,x___,RSSL;
 cnext,L__$->load,L__$,RSSR;
 load,0__1->load,0__0,RSSR;   //$L________:
 load,1__0->load,1__1,RSSR;
 load,0__0->load,0__0,RSSR;   //$L________:
 load,1__1->load,1__1,RSSR;
 
 //cnext,M$$$->move,M$$$,RSSS;
// cnext,L_$$->load,L_$$,RSSR;
 //load,0_$1->load,0_$0,RSSR;
 //load,1_$1->load,1_$1,RSSR;
 //load,1_$0->load,1_$1,RSSR;
 //load,0_$0->load,0_$0,RSSR;
 //load,:_$_->cnext,:_$_,RSSR;
 
 cnext,L_$$->load,L_$$,RSSR;
 load,0_$1->load,0_$0,RSSR;   //$L________:
 load,1_$0->load,1_$1,RSSR;
 load,0_$0->load,0_$0,RSSR;   //$L________:
 load,1_$1->load,1_$1,RSSR;
 load,:_$_->c,:_$_,SSSL;
 //c,:_$0->c,:_$0,SSSL;
 
 //c,:_$0->c,:_$0,SSSL;
 //c,:_$1->c,:_$1,SSSL;
 //c,:_$$->cnext,:_$$,RSSS;
 
 cnext,L$_$->load,L$_$,RSSR;
 load,0$_1->load,0$_0,RSSR;   //$L________:
 load,1$_0->load,1$_1,RSSR;
 load,0$_0->load,0$_0,RSSR;   //$L________:
 load,1$_1->load,1$_1,RSSR;
 load,:$__->c,:$__,SSSL;
 //c,:$_0->c,:$_0,SSSL;
 
 cnext,A__$->cright,A__$,SSSR;
 cnext,A$_$->cright,A$_$,SRSR;
 cnext,A$$$->cright,A$$$,SRRR;
 cnext,A_$$->cright,A_$$,SSRR;
 cright,A__0->cright,A__0,SSSR;
 cright,A11_->cright,A11_,SRRS;
 cright,A00_->cright,A00_,SRRS;
 cright,A01_->cright,A01_,SRRS;
 cright,A10_->cright,A10_,SRRS;
 cright,A__1->cright,A__1,SSSR;
 cright,A$_$->cright,A$_$,SRSR;
 cright,A0_0->cright,A0_0,SRSR;
 cright,A1_1->cright,A1_1,SRSR;
 cright,A1_0->cright,A1_0,SRSR;
 cright,A0_1->cright,A0_1,SRSR;
 cright,A$$$->cright,A$$$,SRRR;
 cright,A000->cright,A000,SRRR;
 cright,A111->cright,A111,SRRR;
 cright,A010->cright,A010,SRRR;
 cright,A011->cright,A011,SRRR;
 cright,A001->cright,A001,SRRR;
 cright,A110->cright,A110,SRRR;
 cright,A100->cright,A100,SRRR;
 cright,A101->cright,A101,SRRR;
 cright,A_$$->cright,A_$$,SSRR;
 cright,A_00->cright,A_00,SSRR;
 cright,A_11->cright,A_11,SSRR;
 cright,A_10->cright,A_10,SSRR;
 cright,A_01->cright,A_01,SSRR;
 
 cright,A___->add,A___,SLLL;
 add,A001->add,A000,SLLL;
 add,A000->add,A000,SLLL;
 add,A100->add,A101,SLLL;
 add,A101->add,A101,SLLL;
 add,A010->add,A011,SLLL;
 add,A011->add,A011,SLLL;
 add,A110->add1,A110,SLLL;
 add,A111->add1,A110,SLLL;
 add1,A000->add,A001,SLLL;
 add1,A001->add,A001,SLLL;
 add1,A100->add1,A100,SLLL;
 add1,A101->add1,A100,SLLL;
 add1,A111->add1,A111,SLLL;
 add1,A110->add1,A111,SLLL;
 add1,A010->add1,A010,SLLL;
 add1,A011->add1,A010,SLLL;
 
 add1,A$$$->cnext,A$$$,RSSS;
 add,A$$$->cnext,A$$$,RSSS;
 cnext,:$$$->cnext,:$$$,RSSS;
 cnext,L$$$->load,L$$$,RSSR;
 load,0$$1->load,0$$0,RSSR;   //$L________:
 load,1$$0->load,1$$1,RSSR;
 load,0$$0->load,0$$0,RSSR;   //$L________:
 load,1$$1->load,1$$1,RSSR;
 load,:$$_->c,:$$_,RSSL;
 c,M$$0->c,M$$0,SSSL;
 c,M$$1->c,M$$1,SSSL;
 c,M$$$->cnext,M$$$,SSSS;
 cnext,M$$$->move,M$$$,RSSS;
 
 move,x$$$->Mx,x$$$,SSSS;
 Mx,x$$$->Mxx,x$$$,SRSR;
 Mxx,x0$0->Mxx,x0$0,SRSR;
 Mxx,x1$1->Mxx,x1$1,SRSR;
 Mxx,x1$0->Mxx,x0$0,SRSR;
 Mxx,x0$1->Mxx,x1$1,SRSR;
 
 move,y$$$->My,y$$$,SSSS;
 move,y$_$->My,y$_$,SSSS;
 move,x_$$->Mx,x_$$,SSSS;
 My,y$$$->Myy,y$$$,SSRR;
 Myy,y$00->Myy,y$00,SSRR;
 Myy,y$11->Myy,y$11,SSRR;
 Myy,y$10->Myy,y$00,SSRR;
 Myy,y$01->Myy,y$11,SSRR;
 
 Mxx,x_$_->c,x_$_,RSSL;
 c,:_$0->c,:_$0,SSSL;
 c,:_$1->c,:_$1,SSSL;
 c,:_$$->cnext,:_$$,RSSS;
 cnext,M_$$->move,M_$$,RSSS;
 
 
 Myy,y$__->c,y$__,RSSL;
 c,:$_0->c,:$_0,SSSL;
 c,:$_1->c,:$_1,SSSL;
 c,:$_$->cnext,:$_$,RSSS;
 cnext,M$_$->move,M$_$,RSSS;
 
 move,M_$$->move,M_$$,RSSS;
 move,M$_$->move,M$_$,RSSS;
 move,x$_$->Mxx,x$_$,SRSR;
 Mx,x_$$->xleft,x_$$,SLSS;
 xleft,x0$$->xleft,x0$$,SLSS;
 xleft,x1$$->xleft,x1$$,SLSS;
 xleft,x$$$->Mxx,x$$$,SRSR;
 Mx,x__$->xleft,x__$,SLSS;
 xleft,x0_$->xleft,x0_$,SLSS;
 xleft,x1_$->xleft,x1_$,SLSS;
 xleft,x$_$->Mxx,x$_$,SRSR;
 Mxx,x0_0->Mxx,x0_0,SRSR;
 Mxx,x1_0->Mxx,x0_0,SRSR;
 Mxx,x1_1->Mxx,x1_1,SRSR;
 Mxx,x0_1->Mxx,x1_1,SRSR;
 
 My,y$_$->yleft,y$_$,SSLS;
 yleft,y$0$->yleft,y$0$,SSLS;
 yleft,y$1$->yleft,y$1$,SSLS;
 yleft,y$$$->Myy,y$$$,SSRR;
 yleft,y_0$->yleft,y_0$,SSLS;
 
 
 Myy,y_00->Myy,y_00,SSRR;
 Myy,y_10->Myy,y_00,SSRR;
 Myy,y_11->Myy,y_11,SSRR;
 Myy,y_01->Myy,y_11,SSRR;
 
 //Myy,y$__->c,y$__,RSSL;
 //Mxx,x_$_->c,x_$_,RSSL;
 //c,:$$_->c,:$$_,SSSL;
 //c,:$$0->c,:$$0,SSSL;
 //c,:$$1->c,:$$1,SSSL;
 //c,:$$$->cnext,:$$$,RSSS;
 
 //4,:__0->5,:__0,RSSS;
 //4,:__1->5,:__1,RSSS;
 //5,M__0->6,M__0,RSSL;
 //5,M__1->6,M__1,RSSL;
 //6,x__$->7,x$_$,RSSR;
 //7,:$_1->8,:$_1,SRSR;
 //8,:1_1->8,:1_1,SRSR;
 //7,:$_0->8,:$_0,SRSR;
 //8,:0_0->8,:0_0,SRSR;
 
 //4,M__0->5,M__0,RSSS;   //M_
 //4,M__1->5,M__1,RSSS;
 //5,x__0->6,x0_0,SRSL;
 //5,x__1->6,x1_1,SRSL;
 //5,y__0->6,y_00,SSRL;
 //5,y__1->6,y_11,SSRL;
 //6,x0_0->6,x0_0,SRSL;
 //6,x1_1->6,x1_1,SRSL;
 //6,y_00->6,y0_0,SSRL;
 //6,y_11->6,y_11,SSRL;
 
