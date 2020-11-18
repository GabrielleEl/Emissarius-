# Design Pattern Decisions & Rationale

The design pattern and rationales that I have included are listed below: 
* This smart contract interacts with government officials and institutions so I included a special prerequiste 'govt' modifier for the function.
* I also imported the SafeMath library (SWC-101) to protect against underflows and overflows.
* I initiated a speed bump mechanism as an additional security measure. I decided not to use a circuit breaker becuase if this were actually happening I would not want it to stop immedeatly but give government officials time to reasses and then evaluate from there. 
* I also used ownable to restrict access