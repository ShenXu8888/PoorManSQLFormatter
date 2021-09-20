�� -   -    T h i s   s c r i p t   i s   g e n e r a t e d   b y   a   t o o l .   C h a n g e s   m a y   b e   l o s t   w h e n   t h i s   s c r i p t   i s   r e g e n e r a t e d .      -   -   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *       -   -  

 T I T L E :                    S X u _ E m p l o y e e R o l e D i m X C o n f i g u r a t i o n      -   -  

 P U R P O S E :                T o 

 i n s e r t   c o n f i g u r a t i o n   d a t a 
 f o r   S X u _ E m p l o y e e R o l e D i m X   a n d   t h e   f o l l o w i n g   c u s t o m 

 p a c k a g e s :       -   -                                  E r s a t z H R _ E m p l o y e e R o l e _ L o a d ,
	      -   -                                  E r s a t z H R _ E m p l o y e e R o l e _ P a r s e      -   -  

 D A T A B A S E :              S t a g i n g      -   -   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *           -   -    M a k e   s u r e   t h a t   S o u r c e   a n d   T a r g e t   v e r s i o n s   a r e   c o m p a t i b l e   

 D E C L A R E   @ i T a r g e t V e r s i o n   t i n y i n t ,
	                     @ i T a r g e t M i n o r V e r s i o n   i n t ,
	                     @ i S o u r c e V e r s i o n   t i n y i n t ,
	                     @ i S o u r c e M i n o r V e r s i o n   i n t ,
	                     @ V e r s i o n C o m p a t i b l e   b i t ,
	                     @ s V e r s i o n E r r o r M e s s a g e   n v a r c h a r ( 5 0 0 )    

 S E T   @ i S o u r c e V e r s i o n    =    2 8   

 S E T   @ i S o u r c e M i n o r V e r s i o n    =    2 7   

 S E T   @ i T a r g e t V e r s i o n    =    C A S T (   E p i c . G e t C o n f i g u r a t i o n V a l u e (   N  ' W a r e h o u s e V e r s i o n '    )    A S   t i n y i n t   )    

 S E T   @ i T a r g e t M i n o r V e r s i o n    =    C A S T (   E p i c . G e t C o n f i g u r a t i o n V a l u e (   N  ' W a r e h o u s e M i n o r V e r s i o n '    )    A S   i n t   )    

 S E T   @ V e r s i o n C o m p a t i b l e    =    C A S E   W H E N   @ i T a r g e t V e r s i o n    =    @ i S o u r c e V e r s i o n                                                                     O R   (   @ i T a r g e t V e r s i o n    >    @ i S o u r c e V e r s i o n   A N D   @ i T a r g e t V e r s i o n    <   =    @ i S o u r c e V e r s i o n    +    4   )                                                                          T H E N   1   E L S E   0   E N D   

 I F   @ V e r s i o n C o m p a t i b l e    =    0     B E G I N       

 S E T   @ s V e r s i o n E r r o r M e s s a g e    =    N  ' T h e   t a r g e t   v e r s i o n   m u s t   b e   w i t h i n   f o u r   v e r s i o n s   o f   t h e   s o u r c e   v e r s i o n   f o r   t h i s   s c r i p t   t o   b e   i n s t a l l e d .    
 T h e   s o u r c e   v e r s i o n   i s   '     +    C A S T (   E p i c . G e t W a r e h o u s e V e r s i o n N a m e (   @ i S o u r c e V e r s i o n ,    @ i S o u r c e M i n o r V e r s i o n   )    A S   n v a r c h a r ( 5 0 )    )         +    N  ' ,   s o   t h i s   s c r i p t   c a n   o n l y   b e   i n s t a l l e d   o n   v e r s i o n s   '     +    C A S T (   E p i c . G e t W a r e h o u s e V e r s i o n N a m e (   @ i S o u r c e V e r s i o n ,    0   )    A S   n v a r c h a r ( 5 0 )    )         +    N  ' + ,   '     +    C A S T (   E p i c . G e t W a r e h o u s e V e r s i o n N a m e (   @ i S o u r c e V e r s i o n    +    1 ,    0   )    A S   n v a r c h a r ( 5 0 )  )     +    N  ' + ,   '     +    C A S T (   E p i c .
		 G e t W a r e h o u s e V e r s i o n N a m e (   @ i S o u r c e V e r s i o n    +    2 ,    0   )    A S   n v a r c h a r ( 5 0 )    )         +    N  ' + ,   '     +    C A S T (   E p i c . G e t W a r e h o u s e V e r s i o n N a m e ( @ i S o u r c e V e r s i o n    +    3 ,    0 )    A S   n v a r c h a r ( 5 0 )  )     +    N  ' + ,   a n d   '     +    C A S T (   E p i c . G e t W a r e h o u s e V e r s i o n N a m e ( @ i S o u r c e V e r s i o n    +    4 ,    0 )    A S   n v a r c h a r ( 5 0 )  )     +    N  ' + . '         +    N  '   T h e   c u r r e n t   t a r g e t   v e r s i o n   i s   '     +    C A S T (   E p i c . G e t W a r e h o u s e V e r s i o n N a m e (   @ i T a r g e t V e r s i o n ,    @ i T a r g e t M i n o r V e r s i o n   )    A S   n v a r c h a r ( 5 0 )    )     +    N  ' . '  ;

         T H R O W   5 0 0 0 1 ,
	   @ s V e r s i o n E r r o r M e s s a g e ,
	   0 ;

     E N D          -   -  C h e c k   t h a t   t h e   d a t a b a s e   b e i n g   u s e d   i s   s t a g i n g   d a t a b a s e   

 I F   D B _ N A M E ( )     =    d b o . G e t R e p o r t i n g D a t a b a s e N a m e ( )      B E G I N         ;

 T H R O W   5 0 0 0 1 ,
	    ' S c r i p t   c a n n o t   b e   r u n   o n   t h e   r e p o r t i n g   d a t a b a s e .   P l e a s e   r u n   o n   t h e   s t a g i n g   d a t a b a s e . '  ,
	   0 ;

       E N D          -   -    M a k e   s u r e   t h a t   a l l   n o n  -  r e c u r r i n g   j o b s   t h a t   n e e d   t o   b e   p r o c e s s e d   a r e   c o m p l e t e d   

 D E C L A R E   @ J o b E x i s t C h e c k   b i t       

 E X E C U T E   E p i c . C h e c k J o b E x i s t e n c e   @ i _ I g n o r e R e c u r r i n g J o b s    =    1 ,
	   @ o _ E x i s t    =    @ J o b E x i s t C h e c k 
 O U T P U T   

 I F   @ J o b E x i s t C h e c k    =    1     B E G I N ;

         T H R O W   5 0 0 0 1 ,
	   N  ' T h e r e   a r e   b a c k g r o u n d   j o b s   w a i t i n g   t o   b e   p r o c e s s e d .   A l l   n o n - r e c u r r i n g   j o b s   m u s t   b e   p r o c e s s e d   b e f o r e   e x e c u t i n g   t h i s   s c r i p t . '  ,
	   0 ;

     E N D          -   -    M a k e   s u r e   t h i s   s c r i p t   i s   n o t   i n t r o d u c i n g   v a l i d a t i o n   i s s u e s 
 i n t o   e n v i r o n m e n t s   t h a t   d o   n o w   a l l o w   i t   

 D E C L A R E   @ s A l l o w G e n e r a t e d S c r i p t s W i t h E r r o r s   b i t    =    E p i c . D o e s E n v i r o n m e n t A l l o w G e n e r a t e d S c r i p t s W i t h E r r o r s ( )  ;

       

 I F   @ s A l l o w G e n e r a t e d S c r i p t s W i t h E r r o r s    =    0     B E G I N         T H R O W   5 0 0 0 1 ,
	   N  ' T h i s   s c r i p t   c o u l d   i n t r o d u c e   v a l i d a t i o n   i s s u e s .     I n   o r d e r   t o   i n s t a l l   o n   t h i s   d a t a b a s e   t h e   s o u r c e   e n v i r o n m e n t   m u s t   n o t   h a v e   a n y   v a l i d a t i o n   i s s u e s   p r e s e n t   w h e n   t h e   s c r i p t   i s   g e n e r a t e d .     I f   y o u   f e e l   y o u   s h o u l d   b e   a b l e   t o   m o v e   t h i s   s c r i p t ,   c o n t a c t   y o u r   E p i c   r e p r e s e n t a t i v e   a n d   m e n t i o n   S L G   5 2 4 7 0 0 6 '  ,
	   0 ;

     E N D ;

          -   -    M a k e   s u r e   n o   l o o k u p s   a r e   b r o k e n   

 D E C L A R E   @ s B r o k e n L o o k u p s   n v a r c h a r ( M A X )    

 E X E C U T E   E p i c . S t r i n g A g g         @ i _ s S q l    =    N  ' S E L E C T   < < L o o k u p s . T a b l e E t l N a m e   +   N '   ' . '   '   +   L o o k u p s . K e y C o l u m n N a m e > >  
                                 F R O M   C o n f i g . L o o k u p s   L o o k u p s  
                                     I N N E R   J O I N   C o n f i g . T a b l e E t l s   T a b l e E t l s  
                                         O N   L o o k u p s . T a b l e E t l N a m e   =   T a b l e E t l s . T a b l e E t l N a m e  
                                     I N N E R   J O I N   C o n f i g . W a r e h o u s e T a b l e s   W a r e h o u s e T a b l e s  
                                         O N   L o o k u p s . L o o k u p T a b l e N a m e   =   W a r e h o u s e T a b l e s . T a b l e N a m e  
                                 W H E R E   W a r e h o u s e T a b l e s . T a b l e E t l N a m e   =   N '   ' S X u _ E m p l o y e e R o l e D i m X '   
	'  
                                     A N D   (   L o o k u p s . L o o k u p T y p e   I N   (   N '   ' D u r a b l e I d '   ' ,   N '   ' S o u r c e D a t a D u r a b l e I d '   '   )  
                                         O R   (   L o o k u p s . L o o k u p T y p e   I N   (   N '   ' I d '   ' ,   N '   ' S o u r c e D a t a I d '   '   )   A N D   C O A L E S C E (   L o o k u p s . D a t e C o l u m n N a m e ,   N '   ' '   '   )   < >   N '   ' '   '   )   )    
                                 O R D E R   B Y   L o o k u p s . T a b l e E t l N a m e ,   L o o k u p s . K e y C o l u m n N a m e '  ,
	         @ o _ s D e l i m i t e d S t r i n g    =    @ s B r o k e n L o o k u p s 
 O U T P U T   

 I F   C O A L E S C E (   @ s B r o k e n L o o k u p s ,    N  ' '    )     <   >    N  ' '      B E G I N       

 S E T   @ s B r o k e n L o o k u p s    =    N  ' U n a b l e   t o   s e t   t h e   c o m p o n e n t   t o   n o   c h a n g e   t r a c k i n g   ( T y p e   1 )   b e c a u s e   t h i s   w o u l d   b r e a k   t h e   f o l l o w i n g   l o o k u p   c o l u m n s   t o   S X u _ E m p l o y e e R o l e D i m X :   '     +    @ s B r o k e n L o o k u p s ;

         T H R O W   5 0 0 0 1 ,
	   @ s B r o k e n L o o k u p s ,
	   0 ;

     E N D          -   -    C h e c k 

 i f   h i s t o r i c a l   r o w s   w i l l   n e e d   t o   b e   d e l e t e d   

 D E C L A R E   @ R e m o v e H i s t o r i c a l R o w s   b i t   

 S E T   @ R e m o v e H i s t o r i c a l R o w s    =    C A S E   W H E N   E X I S T S   (   S E L E C T   1                                                                                                       F R O M   C o n f i g . T a b l e E t l C o l u m n s                                                                                                       W H E R E   T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '                                                                                                                A N D   T y p e 2    =    1   )    T H E N   1                                                                       E L S E   0   E N D          -   -    M a k e   s u r e   s t o r i n g   i d   m a p p i n g s   c a n   b e   c h a n g e d   s a f e l y   

 D E C L A R E   @ W i l l B e P r o c e s s i n g I d M a p p i n g s   b i t    =    0   

 D E C L A R E   @ I s P r o c e s s i n g I d M a p p i n g s   b i t    =    E p i c . G e t T a b l e I n f o (   N  ' S X u _ E m p l o y e e R o l e D i m X '  ,    N  ' P r o c e s s I d M a p p i n g s '    )    

 D E C L A R E   @ s P e n d i n g I d M a p p i n g T a b l e N a m e   n v a r c h a r ( 2 0 0 )     =    E p i c . G e t T a b l e I n f o (   N  ' S X u _ E m p l o y e e R o l e D i m X '  ,    N  ' P e n d i n g I d M a p p i n g s '    )    

 D E C L A R E   @ P e n d i n g T a b l e H a s R o w s   b i t          -   -    C a n n o t   c h a n g e 

 i f   m e r g e s   h a v e   n o t   b e e n   p r o c e s s e d   y e t   

 I F   @ W i l l B e P r o c e s s i n g I d M a p p i n g s    <   >    @ I s P r o c e s s i n g I d M a p p i n g s           A N D   E X I S T S  (
		   S E L E C T   1                                     
		 F R O M   E p i c . M e r g e Q u e u e   M e r g e Q u e u e                                     
		 W H E R E   M e r g e Q u e u e . T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '                                            A N D   (   M e r g e Q u e u e . S u c c e s s   I S   N U L L   O R   M e r g e Q u e u e . S u c c e s s    =    0   )    
		)      B E G I N         ;

 T H R O W   5 0 0 0 1 ,
	   N  ' C a n n o t   s t a r t   o r   s t o p   s t o r i n g   I D   m a p p i n g s   u n t i l   a l l   m e r g e s   f o r   S X u _ E m p l o y e e R o l e D i m X   h a v e   b e e n   r e s o l v e d '  ,
	   0 ;

     E N D          -   -    C a n n o t   d i s a b l e 

 i f   t h e r e   a r e 

 o p e n   r e c o r d   m a t c h e s 
 f o r   t h e   s o u r c e   d a t a   t a b l e   

 I F   @ W i l l B e P r o c e s s i n g I d M a p p i n g s    =    0           A N D   @ I s P r o c e s s i n g I d M a p p i n g s    =    1           A N D   E X I S T S  (
		   S E L E C T   1                                     
		 F R O M   E p i c . W o r k Q u e u e   W o r k Q u e u e                                     
		 W H E R E   W o r k Q u e u e . T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X S o u r c e D a t a '                                            A N D   W o r k Q u e u e . T y p e    =    N  ' R e c o r d M a t c h '                                              A N D   W o r k Q u e u e . S t a t u s   I N   (   N  ' O p e n '  ,    N  ' D e f e r r e d '    )    
		)      B E G I N         ;

 T H R O W   5 0 0 0 1 ,
	   N  ' C a n n o t   s t o p   s t o r i n g   I D   m a p p i n g s   u n t i l   a l l   r e c o r d   m a t c h   w o r k   q u e u e   i t e m s   f o r   S X u _ E m p l o y e e R o l e D i m X S o u r c e D a t a   h a v e   b e e n   r e s o l v e d '  ,
	   0 ;

     E N D          -   -    C a n n o t   d i s a b l e 

 i f   t h e r e   a r e   p e n d i n g   I D   m a p p i n g s   

 I F   @ W i l l B e P r o c e s s i n g I d M a p p i n g s    =    0           A N D   @ I s P r o c e s s i n g I d M a p p i n g s    =    1     B E G I N       

 E X E C U T E   E p i c . H a s R o w s   @ i _ s T a b l e N a m e W i t h S c h e m a    =    @ s P e n d i n g I d M a p p i n g T a b l e N a m e ,
	                                                   @ H a s R o w s    =    @ P e n d i n g T a b l e H a s R o w s 
 O U T P U T ,
	                                                   @ i _ T a b l e I n R e p o r t i n g    =    1       

 I F   @ P e n d i n g T a b l e H a s R o w s    =    1         B E G I N             ;

 T H R O W   5 0 0 0 1 ,
	   N  ' C a n n o t   s t o p   s t o r i n g   I D   m a p p i n g s   u n t i l   a l l   p e n d i n g   I D   m a p p i n g s   h a v e   b e e n   r e s o l v e d '  ,
	   0 ;

         E N D     E N D          -   -    M a k e   s u r e   s o u r c e   d a t a   c a n   b e   s a f e l y   d i s a b l e d   

 D E C L A R E   @ S t o r i n g S o u r c e D a t a   b i t    =    0       

 I F   @ S t o r i n g S o u r c e D a t a    =    0           A N D   E X I S T S  (
		   S E L E C T   1                                     
		 F R O M   C o n f i g . L o o k u p s                                     
		 W H E R E   L o o k u p s . L o o k u p T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X S o u r c e D a t a '                                            A N D   L o o k u p s . L o o k u p T y p e   I N   (   N  ' S o u r c e D a t a I d '  ,    N  ' S o u r c e D a t a D u r a b l e I d '    )    
		)      B E G I N         ;

 T H R O W   5 0 0 0 1 ,
	   N  ' C a n n o t   s t o p   s t o r i n g   s o u r c e   d a t a   i n   S X u _ E m p l o y e e R o l e D i m X   w h i l e   s o u r c e   d a t a   l o o k u p s   t o   i t   e x i s t '  ,
	   0 ;

     E N D       

 I F   @ S t o r i n g S o u r c e D a t a    =    0           A N D   0    =    1     B E G I N         ;

 T H R O W   5 0 0 0 1 ,
	   N  ' C a n n o t   s t o p   s t o r i n g   s o u r c e   d a t a   i n   S X u _ E m p l o y e e R o l e D i m X   w h i l e   S X u _ E m p l o y e e R o l e D i m X   i s   f o r c i n g   s o u r c e   d a t a   l o o k u p s '  ,
	   0 ;

     E N D       

 I F   @ S t o r i n g S o u r c e D a t a    =    0           A N D   0    =    1     B E G I N         ;

 T H R O W   5 0 0 0 1 ,
	   N  ' C a n n o t   s t o p   s t o r i n g   s o u r c e   d a t a   i n   S X u _ E m p l o y e e R o l e D i m X   w h i l e   S X u _ E m p l o y e e R o l e D i m X   h a s   s t o r e   I D   m a p p i n g s   e n a b l e d '  ,
	   0 ;

     E N D          -   -    M a k e   s u r e   t h a t   t h e r e   a r e   n o   f a i l e d   E T L   t a s k s 
 f o r   t h e   D M C   

 I F   E X I S T S  (
		   S E L E C T   1                               
		 F R O M   E p i c . F a i l e d E t l T a s k s                                 
		 W H E R E   E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '                                    A N D    [ F i x e d ]     =    0                         
		 U N I O N   A L L                         
		 S E L E C T   1                             
		 F R O M   E p i c . E t l P e r f o r m a n c e I n f o L o g                             
		 W H E R E    [ L e v e l ]    I N   ( N  ' T a s k '  ,    N  ' D e t a i l '  )                                    A N D   E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '                                    A N D   E n d T i m e   I S   N U L L   
		)      B E G I N ;

         T H R O W   5 0 0 0 1 ,
	   N  ' S X u _ E m p l o y e e R o l e D i m X   c a n '   ' t   b e   d e p l o y e d   b e c a u s e   i t   h a s   a   f a i l e d   E T L   t a s k   a n d / o r   i s   c u r r e n t l y   r u n n i n g '  ,
	   0 ;

     E N D          -   -    M a k e   s u r e   t h a t   t h e   p a c k a g e   s o u r c e s   e x i s t   

 I F   E p i c . G e t I d F o r S o u r c e N a m e (   N  ' S X u   E r s a t z H R '    )    I S   N U L L     B E G I N ;

         T H R O W   5 0 0 0 1 ,
	   N  ' P a c k a g e   s o u r c e   S X u   E r s a t z H R   d o e s n '   ' t   e x i s t   i n   t h e   t a r g e t   e n v i r o n m e n t '  ,
	   0 ;

     E N D          -   -  c h e c k 
 f o r   d u p l i c a t e   d i s p l a y   n a m e s   

 D E C L A R E   @ i _ t P a c k a g e N a m e s A n d E p i c V e r s i o n s   C o n s o l e . P a c k a g e N a m e s A n d E p i c V e r s i o n s   

 I N S E R T 
 I N T O   @ i _ t P a c k a g e N a m e s A n d E p i c V e r s i o n s 
 V A L U E S       (   N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,    N  ' E r s a t z H R _ E m p l o y e e R o l e _ L o a d '  ,    N U L L ,    N U L L   )      ,
	 (   N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,    N  ' E r s a t z H R _ E m p l o y e e R o l e _ P a r s e '  ,    N U L L ,    N U L L   )    

 E X E C U T E   C o n s o l e . C h e c k D i s p l a y N a m e O v e r l a p P a c k a g e L e v e l   N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	   @ i _ t P a c k a g e N a m e s A n d E p i c V e r s i o n s          -   -    M a k e   s u r e   t h a t   t h e   s e l e c t e d   p a c k a g e s   d o   n o t   e x i s t   i n   o t h e r   D M C s   

 D E C L A R E   @ s D m c N a m e I n U s e   n v a r c h a r ( 3 0 0 )  ,
	                     @ s P a c k a g e N a m e I n U s e   n v a r c h a r ( 3 0 0 )  ,
	                     @ s P a c k a g e E r r o r M e s s a g e   n v a r c h a r ( M A X )        

 S E T   @ s P a c k a g e E r r o r M e s s a g e    =    I S N U L L (   @ s P a c k a g e E r r o r M e s s a g e ,     ' '    )      

 S E L E C T   @ s P a c k a g e E r r o r M e s s a g e    +   =    N  ' P a c k a g e   '     +    P a c k a g e s . P a c k a g e N a m e    +    N  '   i s   i n   u s e   i n   D M C   '     +    P a c k a g e s . T a b l e E t l N a m e    +    N  ' .   '        
 F R O M   C o n f i g . P a c k a g e s   P a c k a g e s       
 W H E R E   P a c k a g e s . T a b l e E t l N a m e    <   >    N  ' S X u _ E m p l o y e e R o l e D i m X '              A N D   P a c k a g e s . P a c k a g e N a m e   I N   ( N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,  N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  )    

 I F   @ s P a c k a g e E r r o r M e s s a g e    <   >    N  ' '      B E G I N ;

         T H R O W   5 0 0 0 1 ,
	   @ s P a c k a g e E r r o r M e s s a g e ,
	   0 ;

     E N D          -   -    M a k e   s u r e   t h a t   y o u   c a n   a c q u i r e   s y s t e m   l e v e l   l o c k   

 D E C L A R E   @ S u c c e s s C h e c k   b i t ,
	                     @ s E r r o r C h e c k   n v a r c h a r ( M A X )  ,
	                     @ s L o c k e d B y C h e c k   n v a r c h a r ( 2 0 0 )        

 E X E C U T E   E p i c . L o c k E t l   N  ' S y s t e m '  ,
	   1 ,
	   @ i _ s L o c k e d B y    =    N  ' C o n s o l e   G e n e r a t e d   S c r i p t '  ,
	   @ i _ n L o o p D e l a y S e c o n d s    =    1 ,
	   @ i _ n T i m e o u t S e c o n d s    =    0 ,
	           @ o _ I s S u c c e s s    =    @ S u c c e s s C h e c k 
 O U T P U T ,
	   @ o _ s C u r r e n t l y L o c k e d B y    =    @ s L o c k e d B y C h e c k 
 O U T P U T ,
	   @ i _ I s E x e c u t i o n    =    0     

 I F   @ S u c c e s s C h e c k    =    0     B E G I N       

 S E T   @ s E r r o r C h e c k    =    C A S E   W H E N   N U L L I F ( @ s L o c k e d B y C h e c k ,    N  ' '  )    I S   N U L L   T H E N   N  ' B a c k g r o u n d   p r o c e s s '    E L S E   @ s L o c k e d B y C h e c k   E N D              +    N  '   i s   c u r r e n t l y   l o c k i n g   s y s t e m .   T r y   a g a i n   l a t e r . '  ;

         T H R O W   5 0 0 0 1 ,
	   @ s E r r o r C h e c k ,
	   1 ;

     E N D       

 S E T   N O C O U N T   O N       

 D E C L A R E   @ s D m c N a m e   n v a r c h a r ( 5 0 )  ,
	                     @ E p i c R e l e a s e d   b i t ,
	                     @ H a s D e v e l o p e r A c c e s s   b i t ,
	                     @ S c r i p t T y p e   n v a r c h a r ( 5 0 )  ,
	                     @ s P a c k a g e N a m e s   n v a r c h a r ( m a x )        

 S E T   @ s D m c N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '    

 S E T   @ E p i c R e l e a s e d    =    0   

 S E T   @ H a s D e v e l o p e r A c c e s s    =    1   

 S E T   @ S c r i p t T y p e    =    N  ' D m c & P a c k a g e '    

 S E T   @ s P a c k a g e N a m e s    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X , S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '          B E G I N   T R Y           

 E X E C U T E   C o n s o l e . P r e D m c S c r i p t   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d ,
	   @ H a s D e v e l o p e r A c c e s s ,
	   @ S c r i p t T y p e           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o E t l D e p e n d e n c i e s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d ,
	   @ S c r i p t T y p e ,
	   @ s P a c k a g e N a m e s              -   -  

 I n s e r t 
 i n t o   E t l D e p e n d e n c i e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o E t l D e p e n d e n c i e s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o L o o k u p s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   L o o k u p s          -   -          N o   d a t a                    -   -  

 I n s e r t 
 i n t o   D m c M a t c h i n g          -   -          N o   d a t a                    -   -  

 I n s e r t 
 i n t o   M a t c h i n g R u l e s          -   -          N o   d a t a                    -   -  

 I n s e r t 
 i n t o   M a t c h i n g R u l e C o l u m n s          -   -          N o   d a t a                    -   -  

 I n s e r t 
 i n t o   M a t c h i n g R u l e C o l u m n E x c l u d e d V a l u e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e s   @ i _ s D m c N a m e    =    @ s D m c N a m e ,
	   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d ,
	   @ i _ s P a c k a g e N a m e s    =    @ s P a c k a g e N a m e s              -   -  

 I n s e r t 
 i n t o   P a c k a g e s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s D i s p l a y N a m e    =    N  ' E r s a t z H R _ E m p l o y e e R o l e _ L o a d '  ,
	             @ i _ s G r o u p N a m e    =    N  ' E r s a t z H R '  ,
	             @ i _ s P r o c e d u r e N a m e    =    N  ' d b o . S X u _ E r s a t z _ E m p l o y e e R o l e D i m _ L o a d _ X '  ,
	             @ i _ s E x t r a c t M e t h o d    =    N  ' P r o c e d u r e '  ,
	             @ i _ s D e s t i n a t i o n T y p e    =    N  ' R e p o r t i n g '  ,
	             @ i _ s A c t i o n    =    N  ' L o a d '  ,
	             @ i _ S i n g l e U s e    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y R e l e a s e d    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y O v e r r i d e    =    N U L L ,
	             @ i _ i P r o c e s s I n d e x    =    N U L L ,
	             @ i _ s D e s c r i p t i o n    =    N  ' '  ,
	             @ i _ s C l a r i t y F u l l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e F u l l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y I n c r e m e n t a l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e I n c r e m e n t a l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y B a c k f i l l D e l e t e E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e B a c k f i l l D e l e t e E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ i F i r s t E p i c V e r s i o n I d    =    9 7 ,
	             @ i _ i L a s t E p i c V e r s i o n I d    =    3 2 7 6 7 ,
	             @ i _ s C l a r i t y B a c k f i l l T h r e s h o l d    =    N  ' '  ,
	             @ i _ s C l a r i t y I n c r e m e n t a l T h r e s h o l d    =    N  ' '  ,
	             @ i _ s R a n d o m S a m p l e S i z e    =    N  ' '  ,
	             @ i _ s R a n d o m S a m p l e T h r e s h o l d    =    N  ' '  ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E t l L e a d O w n e d    =    0 ,
	             @ i _ s L i n e a g e P r o c e d u r e N a m e    =    N  ' '  ,
	             @ i _ N e e d s C l a r i t y V a l i d a t i o n    =    0 ,
	             @ i _ E x e c u t e I n 3 2 B i t M o d e    =    N U L L ,
	             @ i _ s C a t a l o g L o c a t i o n    =    N  ' '  ,
	             @ i _ I s T a r g e t i n g P a c k a g e S p e c i f i c I m p o r t T a b l e    =    0 ,
	             @ i _ S u p p o r t s M u l t i p l e C l a r i t y V e r s i o n s    =    0 ,
	             @ i _ C l a r i t y F u l l E x t r a c t Q u e r y B a t c h M o d e    =    0 ,
	             @ i _ C l a r i t y I n c r e m e n t a l E x t r a c t Q u e r y B a t c h M o d e    =    0 ,
	             @ i _ I g n o r e S t r i n g I d T y p e s D u r i n g L o a d    =    0 ,
	             @ i _ P e r f o r m s R e v e r s e B u s i n e s s K e y L o o k u p s    =    0 ,
	             @ i _ R e c o v e r O n F a i l u r e    =    1 ,
	             @ i _ s C l a r i t y U n i q u e T a b l e O v e r r i d e C o d e    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e U n i q u e T a b l e O v e r r i d e C o d e    =    N  ' '            

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s D i s p l a y N a m e    =    N  ' E r s a t z H R _ E m p l o y e e R o l e _ P a r s e '  ,
	             @ i _ s G r o u p N a m e    =    N  ' E r s a t z H R '  ,
	             @ i _ s P r o c e d u r e N a m e    =    N  ' '  ,
	             @ i _ s E x t r a c t M e t h o d    =    N  ' S S I S '  ,
	             @ i _ s D e s t i n a t i o n T y p e    =    N  ' R e p o r t i n g '  ,
	             @ i _ s A c t i o n    =    N  ' L o a d '  ,
	             @ i _ S i n g l e U s e    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y R e l e a s e d    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y O v e r r i d e    =    N U L L ,
	             @ i _ i P r o c e s s I n d e x    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' '  ,
	             @ i _ s C l a r i t y F u l l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e F u l l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y I n c r e m e n t a l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e I n c r e m e n t a l E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y B a c k f i l l D e l e t e E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e B a c k f i l l D e l e t e E x t r a c t Q u e r y    =    N  ' '  ,
	             @ i _ i F i r s t E p i c V e r s i o n I d    =    9 7 ,
	             @ i _ i L a s t E p i c V e r s i o n I d    =    3 2 7 6 7 ,
	             @ i _ s C l a r i t y B a c k f i l l T h r e s h o l d    =    N  ' '  ,
	             @ i _ s C l a r i t y I n c r e m e n t a l T h r e s h o l d    =    N  ' '  ,
	             @ i _ s R a n d o m S a m p l e S i z e    =    N  ' '  ,
	             @ i _ s R a n d o m S a m p l e T h r e s h o l d    =    N  ' '  ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E t l L e a d O w n e d    =    0 ,
	             @ i _ s L i n e a g e P r o c e d u r e N a m e    =    N  ' '  ,
	             @ i _ N e e d s C l a r i t y V a l i d a t i o n    =    0 ,
	             @ i _ E x e c u t e I n 3 2 B i t M o d e    =    0 ,
	             @ i _ s C a t a l o g L o c a t i o n    =    N  ' '  ,
	             @ i _ I s T a r g e t i n g P a c k a g e S p e c i f i c I m p o r t T a b l e    =    0 ,
	             @ i _ S u p p o r t s M u l t i p l e C l a r i t y V e r s i o n s    =    0 ,
	             @ i _ C l a r i t y F u l l E x t r a c t Q u e r y B a t c h M o d e    =    0 ,
	             @ i _ C l a r i t y I n c r e m e n t a l E x t r a c t Q u e r y B a t c h M o d e    =    0 ,
	             @ i _ I g n o r e S t r i n g I d T y p e s D u r i n g L o a d    =    0 ,
	             @ i _ P e r f o r m s R e v e r s e B u s i n e s s K e y L o o k u p s    =    0 ,
	             @ i _ R e c o v e r O n F a i l u r e    =    1 ,
	             @ i _ s C l a r i t y U n i q u e T a b l e O v e r r i d e C o d e    =    N  ' '  ,
	             @ i _ s C l a r i t y O r a c l e U n i q u e T a b l e O v e r r i d e C o d e    =    N  ' '            

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e S o u r c e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e S o u r c e s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e S o u r c e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ i S o u r c e I d    =    1 0 0 0 1 ,
	             @ i _ s S o u r c e N a m e    =    N  ' S X u   E r s a t z H R '  ,
	             @ i _ s I d T y p e O v e r r i d e    =    N  ' '  ,
	             @ i _ R e p e a t B a c k f i l l    =    0 ,
	             @ i _ R u n I n c r e m e n t a l    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e S o u r c e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ i S o u r c e I d    =    1 0 0 0 1 ,
	             @ i _ s S o u r c e N a m e    =    N  ' S X u   E r s a t z H R '  ,
	             @ i _ s I d T y p e O v e r r i d e    =    N  ' '  ,
	             @ i _ R e p e a t B a c k f i l l    =    0 ,
	             @ i _ R u n I n c r e m e n t a l    =    0           

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o P a c k a g e S o u r c e s   @ s D m c N a m e              -   -  

 I n s e r t 
 i n t o   P a c k a g e B a s e I d C o l u m n s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e C a t e g o r y T a b l e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e C a t e g o r y T a b l e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e C l a r i t y S o u r c e C o l u m n s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e C l a r i t y S o u r c e C o l u m n s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e C l a r i t y T a b l e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e C l a r i t y T a b l e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o P a c k a g e C l a r i t y T a b l e s           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e C o l u m n s   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e C o l u m n s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ I s I n c r e m e n t a l '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' b i t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ L o a d I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' t i n y i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ P a c k a g e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ S o u r c e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' D e s c r i p t i o n '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    3 0 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d T y p e '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d T y p e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' N a m e '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' N u m e r i c B a s e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n u m e r i c '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    1 8 ,
	             @ i _ i N u m e r i c S c a l e    =    0 ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' R o l e C l a s s '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    1 0 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' S t r i n g B a s e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ I s I n c r e m e n t a l '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' b i t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ L o a d I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' t i n y i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ P a c k a g e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ S o u r c e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' D e s c r i p t i o n '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    3 0 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d T y p e '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d T y p e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' N a m e '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' N u m e r i c B a s e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n u m e r i c '  ,
	             @ i _ i S t r i n g L e n g t h    =    N U L L ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    1 8 ,
	             @ i _ i N u m e r i c S c a l e    =    0 ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' R o l e C l a s s '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    1 0 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' S t r i n g B a s e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N U L L ,
	             @ i _ s E x p r e s s i o n    =    N U L L ,
	             @ i _ I g n o r e E r r o r    =    1 ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r '  ,
	             @ i _ i S t r i n g L e n g t h    =    5 0 ,
	             @ i _ i N u m e r i c P r e c i s i o n    =    N U L L ,
	             @ i _ i N u m e r i c S c a l e    =    N U L L ,
	             @ i _ I s D e l e t e    =    0 ,
	             @ i _ I s V a l i d    =    1 ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ s C l a r i t y T i m e Z o n e    =    N U L L ,
	             @ i _ s T i m e Z o n e O v e r r i d e    =    N U L L           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e A l l o w e d F o r e i g n K e y I d T y p e s              -   -  

 I n s e r t 
 i n t o   P a c k a g e A l l o w e d F o r e i g n K e y I d T y p e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o P a c k a g e A l l o w e d F o r e i g n K e y I d T y p e s   @ s D m c N a m e           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e D a t a D e p e n d e n c i e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e D a t a D e p e n d e n c i e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e D a t a S o u r c e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e D a t a S o u r c e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e I d T y p e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e I d T y p e s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e I d T y p e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ L o a d _ X '  ,
	             @ i _ s I d T y p e    =    N  ' E r s a t z E m p l o y e e R o l e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N  ' '            

 E X E C U T E   C o n s o l e . I n s e r t I n t o P a c k a g e I d T y p e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s P a c k a g e N a m e    =    N  ' S X u _ E r s a t z H R _ E m p l o y e e R o l e _ P a r s e _ X '  ,
	             @ i _ s I d T y p e    =    N  ' E r s a t z E m p l o y e e R o l e I d '  ,
	             @ i _ s D e s c r i p t i o n    =    N  ' '            

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o P a c k a g e I d T y p e s   @ s D m c N a m e           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e V a r i a b l e s   @ i _ E p i c R e l e a s e d    =    @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P a c k a g e V a r i a b l e s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o P a c k a g e V a r i a b l e s           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P a c k a g e Q u e r y E x t e n s i o n s              -   -  

 I n s e r t 
 i n t o   P a c k a g e Q u e r y E x t e n s i o n s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o P r o c e d u r e E t l s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   P r o c e d u r e E t l s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o P r o c e d u r e E t l s           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o T a b l e E t l s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   T a b l e E t l s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s D m c T y p e    =    N  ' D i m e n s i o n '  ,
	             @ i _ s E p i c I m p o r t T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X I m p o r t '  ,
	             @ i _ s E x i s t i n g B a c k f i l l I d s I m p o r t T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X E x i s t i n g B a c k f i l l I d s I m p o r t '  ,
	             @ i _ s D e l e t e I m p o r t T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X D e l e t e I m p o r t '  ,
	             @ i _ s T r a n s f o r m P r o c e d u r e    =    N  ' '  ,
	             @ i _ s P r o c e s s P r o c e d u r e    =    N  ' '  ,
	             @ i _ s C l e a n u p P r o c e d u r e    =    N  ' '  ,
	             @ i _ s F i x C l e a n u p P r o c e d u r e    =    N  ' '  ,
	             @ i _ B r i d g e    =    0 ,
	             @ i _ C l a r i t y E x t r a c t i o n    =    1 ,
	             @ i _ C u s t o m E x t r a c t i o n    =    1 ,
	             @ i _ T r a n s f o r m    =    1 ,
	             @ i _ L o a d    =    1 ,
	             @ i _ P r o c e s s D e l e t e s    =    1 ,
	             @ i _ P r o c e s s I d M a p p i n g s    =    0 ,
	             @ i _ A u t o m a t e I d R e m a p p i n g    =    0 ,
	             @ i _ H i d d e n    =    0 ,
	             @ i _ s P a r e n t    =    N U L L ,
	             @ i _ s G r a n u l a r i t y    =    N  ' A   r o w   i n   t h i s   t a b l e   r e p r e s e n t s   a   j o b   r o l e   u n d e r   w h i c h   a n   e m p l o y e e   c a n   l o g   t i m e . '  ,
	             @ i _ s I m p o r t T a b l e G r a n u l a r i t y    =    N  ' A   r o w   i n   t h i s   t a b l e   r e p r e s e n t s   a   j o b   r o l e   u n d e r   w h i c h   a n   e m p l o y e e   c a n   l o g   t i m e . '  ,
	             @ i _ s I m p o r t T a b l e D e s c r i p t i o n    =    N  ' '  ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E t l L e a d O w n e d    =    0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y R e l e a s e d    =    0 ,
	             @ i _ E x c l u d e F r o m N i g h t l y O v e r r i d e    =    N U L L ,
	             @ i _ S t o r e S o u r c e D a t a    =    0 ,
	             @ i _ I s C c i    =    0 ,
	             @ i _ R u n C h e c k D e l e t e s B e f o r e P r o c e s s    =    0 ,
	             @ i _ F o r c e S o u r c e D a t a L o o k u p s    =    0 ,
	             @ i _ A l l o w C o n c u r r e n t N o n Q u e r y P a c k a g e s    =    1 ,
	             @ i _ A l l o w M u l t i p l e S o u r c e R e c o r d s    =    1 ,
	             @ i _ I s T i m e s p a n T a b l e    =    0 ,
	             @ i _ C l e a n u p P r o c e d u r e C o m p l i e s W i t h C h a n g e T r a c k i n g    =    0           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o T a b l e E t l C o l u m n s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   T a b l e E t l C o l u m n s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' S X u _ E m p l o y e e R o l e K e y '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' S X u _ E m p l o y e e R o l e K e y '  ,
	             @ i _ s D a t a T y p e    =    N  ' b i g i n t '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    1 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' S u r r o g a t e   k e y   u s e d   t o   u n i q u e l y   i d e n t i f y   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d T y p e I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' I d T y p e I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    1 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    1 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' S o u r c e   I d T y p e   I D   f o r   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' S o u r c e   I d T y p e   I D   f o r   t h e   r e c o r d '  ,
	             @ i _ i I n d e x    =    1 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d T y p e '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' I d T y p e '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 5 0 ) '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    1 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    1 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' S o u r c e   I D   t y p e   f o r   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' S o u r c e   I D   t y p e   f o r   t h e   r e c o r d '  ,
	             @ i _ i I n d e x    =    2 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 5 0 ) '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    1 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    1 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' S o u r c e   I D   f o r   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' S o u r c e   I D   f o r   t h e   r e c o r d '  ,
	             @ i _ i I n d e x    =    3 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' N u m e r i c B a s e I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' N u m e r i c B a s e I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' n u m e r i c ( 1 8 , 0 ) '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' P r i m a r y   b a s e   I D   o f   t h e   r e c o r d .   F o r   C l a r i t y   q u e r y - b a s e d   l o a d   p a c k a g e s ,   o n e   o f   t h e   b a s e   I D   c o l u m n s   m u s t   b e   p o p u l a t e d ,   a n d   t h e   u n p o p u l a t e d   b a s e   I D   c o l u m n   c a n   b e   l e f t   N U L L .   I f   n o   b a s e   I D   c o l u m n   i s   p o p u l a t e d ,   C l a r i t y   q u e r y - b a s e d   d e l e t e   p a c k a g e s   w i l l   n o t   m a r k   r e c o r d s   a s   d e l e t e d . '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' P r i m a r y   b a s e   I D   o f   t h e   r e c o r d .   F o r   C l a r i t y   q u e r y - b a s e d   l o a d   p a c k a g e s ,   o n e   o f   t h e   b a s e   I D   c o l u m n s   m u s t   b e   p o p u l a t e d ,   a n d   t h e   u n p o p u l a t e d   b a s e   I D   c o l u m n   c a n   b e   l e f t   N U L L .   I f   n o   b a s e   I D   c o l u m n   i s   p o p u l a t e d ,   C l a r i t y   q u e r y - b a s e d   d e l e t e   p a c k a g e s   w i l l   n o t   m a r k   r e c o r d s   a s   d e l e t e d . '  ,
	             @ i _ i I n d e x    =    4 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' S t r i n g B a s e I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' S t r i n g B a s e I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 5 0 ) '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' P r i m a r y   b a s e   I D   o f   t h e   r e c o r d .   F o r   C l a r i t y   q u e r y - b a s e d   l o a d   p a c k a g e s ,   o n e   o f   t h e   b a s e   I D   c o l u m n s   m u s t   b e   p o p u l a t e d ,   a n d   t h e   u n p o p u l a t e d   b a s e   I D   c o l u m n   c a n   b e   l e f t   N U L L .   I f   n o   b a s e   I D   c o l u m n   i s   p o p u l a t e d ,   C l a r i t y   q u e r y - b a s e d   d e l e t e   p a c k a g e s   w i l l   n o t   m a r k   r e c o r d s   a s   d e l e t e d . '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' P r i m a r y   b a s e   I D   o f   t h e   r e c o r d .   F o r   C l a r i t y   q u e r y - b a s e d   l o a d   p a c k a g e s ,   o n e   o f   t h e   b a s e   I D   c o l u m n s   m u s t   b e   p o p u l a t e d ,   a n d   t h e   u n p o p u l a t e d   b a s e   I D   c o l u m n   c a n   b e   l e f t   N U L L .   I f   n o   b a s e   I D   c o l u m n   i s   p o p u l a t e d ,   C l a r i t y   q u e r y - b a s e d   d e l e t e   p a c k a g e s   w i l l   n o t   m a r k   r e c o r d s   a s   d e l e t e d . '  ,
	             @ i _ i I n d e x    =    5 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ C r e a t i o n I n s t a n t '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ C r e a t i o n I n s t a n t '  ,
	             @ i _ s D a t a T y p e    =    N  ' d a t e t i m e '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' T h e   d a t e   a n d   t i m e   t h e   r e c o r d   w a s   c r e a t e d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    6 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ L a s t U p d a t e d I n s t a n t '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ L a s t U p d a t e d I n s t a n t '  ,
	             @ i _ s D a t a T y p e    =    N  ' d a t e t i m e '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' T h e   d a t e   a n d   t i m e   t h e   r e c o r d   w a s   l a s t   u p d a t e d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    7 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ I s I n f e r r e d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ I s I n f e r r e d '  ,
	             @ i _ s D a t a T y p e    =    N  ' t i n y i n t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' 0 '  ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' 1 / 0   c o l u m n   t h a t   i n d i c a t e s   w h e t h e r   t h e   r e c o r d   i s   i n f e r r e d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    8 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ I s D e l e t e d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ I s D e l e t e d '  ,
	             @ i _ s D a t a T y p e    =    N  ' t i n y i n t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' 0 '  ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' 1 / 0   c o l u m n   t h a t   i n d i c a t e s   w h e t h e r   t h e   r e c o r d   i s   d e l e t e d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    9 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ P r i m a r y P a c k a g e T o I m p a c t R e c o r d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ P r i m a r y P a c k a g e T o I m p a c t R e c o r d '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 5 0 ) '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' * U n k n o w n '  ,
	             @ i _ s D e l e t e V a l u e    =    N  ' '  ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' T h e   n a m e   o f   t h e   p r i m a r y   p a c k a g e   t o   i m p a c t   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    1 0 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ M o s t R e c e n t P a c k a g e T o I m p a c t R e c o r d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ M o s t R e c e n t P a c k a g e T o I m p a c t R e c o r d '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 5 0 ) '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' * U n k n o w n '  ,
	             @ i _ s D e l e t e V a l u e    =    N  ' '  ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' T h e   n a m e   o f   t h e   m o s t   r e c e n t   p a c k a g e   t o   i m p a c t   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    1 1 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ N u m b e r O f S o u r c e s '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ N u m b e r O f S o u r c e s '  ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' 0 '  ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    0 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' T h e   n u m b e r   o f   s o u r c e s   c o n t r i b u t i n g   t o   t h e   r e c o r d '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N U L L ,
	             @ i _ i I n d e x    =    1 2 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    1 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ P a c k a g e I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ P a c k a g e I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' s m a l l i n t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    1 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  
	' I D   o f   t h e   p a c k a g e   t h a t   l o a d e d   t h i s   r e c o r d .   F o r   q u e r y - b a s e d   p a c k a g e s   a n d   s t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   S t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   m a i n   i m p o r t   t a b l e   s h o u l d   b e   c o n v e r t e d   t o   l o a d   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   n o t   p o p u l a t e   t h i s   c o l u m n .   F o r   c u s t o m   S S I S   p a c k a g e s ,   u s e   t h e   s t o r e d   p r o c e d u r e   " d b o . G e t S s i s P a c k a g e I m p o r t M e t a d a t a "   o n   t h e   s t a g i n g   d a t a b a s e   t o   c a l c u l a t e   w h a t   t o   p o p u l a t e ,   k e e p i n g   i n   m i n d   t h a t   t h e   I D   i s   e n v i r o n m e n t - s p e c i f i c . ' 
	 ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  
	' I D   o f   t h e   p a c k a g e   t h a t   l o a d e d   t h i s   r e c o r d .   F o r   q u e r y - b a s e d   p a c k a g e s   a n d   s t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   S t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   m a i n   i m p o r t   t a b l e   s h o u l d   b e   c o n v e r t e d   t o   l o a d   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   n o t   p o p u l a t e   t h i s   c o l u m n .   F o r   c u s t o m   S S I S   p a c k a g e s ,   u s e   t h e   s t o r e d   p r o c e d u r e   " d b o . G e t S s i s P a c k a g e I m p o r t M e t a d a t a "   o n   t h e   s t a g i n g   d a t a b a s e   t o   c a l c u l a t e   w h a t   t o   p o p u l a t e ,   k e e p i n g   i n   m i n d   t h a t   t h e   I D   i s   e n v i r o n m e n t - s p e c i f i c . ' 
	 ,
	             @ i _ i I n d e x    =    1 3 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ S o u r c e I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ S o u r c e I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' i n t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    1 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  
	' I D   o f   t h e   s o u r c e   t h a t   l o a d e d   t h i s   r e c o r d .   F o r   q u e r y - b a s e d   p a c k a g e s   a n d   s t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   S t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   m a i n   i m p o r t   t a b l e   s h o u l d   b e   c o n v e r t e d   t o   l o a d   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   n o t   p o p u l a t e   t h i s   c o l u m n .   F o r   c u s t o m   S S I S   p a c k a g e s ,   u s e   t h e   s t o r e d   p r o c e d u r e   " d b o . G e t S s i s P a c k a g e I m p o r t M e t a d a t a "   o n   t h e   s t a g i n g   d a t a b a s e   t o   c a l c u l a t e   w h a t   t o   p o p u l a t e ,   k e e p i n g   i n   m i n d   t h a t   t h e   I D   i s   e n v i r o n m e n t - s p e c i f i c . ' 
	 ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  
	' I D   o f   t h e   s o u r c e   t h a t   l o a d e d   t h i s   r e c o r d .   F o r   q u e r y - b a s e d   p a c k a g e s   a n d   s t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   S t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   m a i n   i m p o r t   t a b l e   s h o u l d   b e   c o n v e r t e d   t o   l o a d   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   n o t   p o p u l a t e   t h i s   c o l u m n .   F o r   c u s t o m   S S I S   p a c k a g e s ,   u s e   t h e   s t o r e d   p r o c e d u r e   " d b o . G e t S s i s P a c k a g e I m p o r t M e t a d a t a "   o n   t h e   s t a g i n g   d a t a b a s e   t o   c a l c u l a t e   w h a t   t o   p o p u l a t e ,   k e e p i n g   i n   m i n d   t h a t   t h e   I D   i s   e n v i r o n m e n t - s p e c i f i c . ' 
	 ,
	             @ i _ i I n d e x    =    1 4 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ I s I n c r e m e n t a l '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ I s I n c r e m e n t a l '  ,
	             @ i _ s D a t a T y p e    =    N  ' b i t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' W h e t h e r   t h i s   r o w   c a m e   f r o m   t h e   i n c r e m e n t a l   o r   b a c k f i l l   v e r s i o n   o f   t h e   p a c k a g e .   F o r   q u e r y - b a s e d   p a c k a g e s ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   F o r   s t o r e d   p r o c e d u r e   a n d   c u s t o m   S S I S   p a c k a g e s ,   i t   c a n   r e m a i n   N U L L . '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' W h e t h e r   t h i s   r o w   c a m e   f r o m   t h e   i n c r e m e n t a l   o r   b a c k f i l l   v e r s i o n   o f   t h e   p a c k a g e .   F o r   q u e r y - b a s e d   p a c k a g e s ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   F o r   s t o r e d   p r o c e d u r e   a n d   c u s t o m   S S I S   p a c k a g e s ,   i t   c a n   r e m a i n   N U L L . '  ,
	             @ i _ i I n d e x    =    1 5 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' _ L o a d I d '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' _ L o a d I d '  ,
	             @ i _ s D a t a T y p e    =    N  ' t i n y i n t '  ,
	             @ i _ A l l o w N u l l    =    1 ,
	             @ i _ s D e f a u l t V a l u e    =    N U L L ,
	             @ i _ s D e l e t e V a l u e    =    N U L L ,
	             @ i _ R e p o r t i n g    =    0 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    1 ,
	             @ i _ D e l e t e I m p o r t    =    1 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    0 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' I D   o f   t h e   l o a d   a t t e m p t   t h e   r o w   i s   a s s o c i a t e d   w i t h .   F o r   q u e r y - b a s e d   p a c k a g e s   a n d   s t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   S t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   m a i n   i m p o r t   t a b l e   s h o u l d   b e   c o n v e r t e d   t o   l o a d   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   n o t   p o p u l a t e   t h i s   c o l u m n .   F o r   c u s t o m   S S I S   p a c k a g e s ,   u s e   t h e   s t o r e d   p r o c e d u r e   " d b o . G e t S s i s P a c k a g e I m p o r t M e t a d a t a "   o n   t h e   s t a g i n g   d a t a b a s e   t o   c a l c u l a t e   w h a t   t o   p o p u l a t e . '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  
	' I D   o f   t h e   l o a d   a t t e m p t   t h e   r o w   i s   a s s o c i a t e d   w i t h .   F o r   q u e r y - b a s e d   p a c k a g e s   a n d   s t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   t h i s   c o l u m n   i s   a u t o - p o p u l a t e d .   S t o r e d   p r o c e d u r e   p a c k a g e s   t a r g e t i n g   t h e   m a i n   i m p o r t   t a b l e   s h o u l d   b e   c o n v e r t e d   t o   l o a d   t h e   p a c k a g e   s p e c i f i c   i m p o r t   t a b l e ,   n o t   p o p u l a t e   t h i s   c o l u m n .   F o r   c u s t o m   S S I S   p a c k a g e s ,   u s e   t h e   s t o r e d   p r o c e d u r e   " d b o . G e t S s i s P a c k a g e I m p o r t M e t a d a t a "   o n   t h e   s t a g i n g   d a t a b a s e   t o   c a l c u l a t e   w h a t   t o   p o p u l a t e . '  ,
	             @ i _ i I n d e x    =    1 6 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' N a m e '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' N a m e '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 5 0 ) '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' * U n k n o w n '  ,
	             @ i _ s D e l e t e V a l u e    =    N  ' * D e l e t e d '  ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    1 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' N a m e   o f   t h e   e m p l o y e e   r o l e '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' N a m e   o f   t h e   e m p l o y e e   r o l e '  ,
	             @ i _ i I n d e x    =    1 7 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' D e s c r i p t i o n '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' D e s c r i p t i o n '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 3 0 0 ) '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' * U n k n o w n '  ,
	             @ i _ s D e l e t e V a l u e    =    N  ' * D e l e t e d '  ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    1 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' D e s c r i p t i o n   o f   t h e   e m p l o y e e   r o l e . '  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' D e s c r i p t i o n   o f   t h e   e m p l o y e e   r o l e . '  ,
	             @ i _ i I n d e x    =    1 8 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l C o l u m n s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s C o l u m n N a m e    =    N  ' R o l e C l a s s '  ,
	             @ i _ s B a s e C o l u m n N a m e    =    N  ' R o l e C l a s s '  ,
	             @ i _ s D a t a T y p e    =    N  ' n v a r c h a r ( 1 0 0 ) '  ,
	             @ i _ A l l o w N u l l    =    0 ,
	             @ i _ s D e f a u l t V a l u e    =    N  ' * U n k n o w n '  ,
	             @ i _ s D e l e t e V a l u e    =    N  ' * D e l e t e d '  ,
	             @ i _ R e p o r t i n g    =    1 ,
	             @ i _ I m p o r t    =    1 ,
	             @ i _ E x i s t i n g B a c k f i l l I d s I m p o r t    =    0 ,
	             @ i _ D e l e t e I m p o r t    =    0 ,
	             @ i _ S o u r c e D a t a    =    0 ,
	             @ i _ S u r r o g a t e K e y    =    0 ,
	             @ i _ I d T y p e    =    0 ,
	             @ i _ I d    =    0 ,
	             @ i _ I d T y p e I d    =    0 ,
	             @ i _ T y p e 1    =    1 ,
	             @ i _ T y p e 2    =    0 ,
	             @ i _ D u r a b l e K e y    =    0 ,
	             @ i _ S t a r t D a t e    =    0 ,
	             @ i _ E n d D a t e    =    0 ,
	             @ i _ I s C u r r e n t    =    0 ,
	             @ i _ J u n k    =    0 ,
	             @ i _ P o s t E t l T y p e 1    =    0 ,
	             @ i _ P o s t E t l T y p e 2    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 1    =    0 ,
	             @ i _ S o u r c e D a t a T y p e 2    =    0 ,
	             @ i _ s D e s c r i p t i o n    =    N  ' C l a s s   o f   t h e   e m p l o y e e   r o l e   >�e . g .   P a t i e n t   C a r e ,   A d m i n i s t r a t i o n ?�'  ,
	             @ i _ s I m p o r t D e s c r i p t i o n    =    N  ' C l a s s   o f   t h e   e m p l o y e e   r o l e   >�e . g .   P a t i e n t   C a r e ,   A d m i n i s t r a t i o n ?�'  ,
	             @ i _ i I n d e x    =    1 9 0 ,
	             @ i _ H a s S t a n d a r d    =    0 ,
	             @ i _ i C o l u m n S t a n d a r d I d    =    N U L L ,
	             @ i _ E p i c R e l e a s e d    =    0 ,
	             @ i _ E x c l F r o m T h i r d P a r t y V i e w s    =    1 ,
	             @ i _ I s S o u r c e C o l u m n    =    0 ,
	             @ i _ I s S t a t u s C o l u m n    =    0 ,
	             @ i _ I s B r i d g e C o m b o C o l u m n    =    0 ,
	             @ i _ I s P a r t i t i o n i n g C o l u m n    =    0           

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o T a b l e E t l C o l u m n s   @ s D m c N a m e           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o D m c P a r t i t i o n I n f o   @ s D m c N a m e              -   -  

 I n s e r t 
 i n t o   D m c P a r t i t i o n I n f o          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o D m c P a r t i t i o n I n f o   @ s D m c N a m e           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o T a b l e E t l I n d e x e s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   T a b l e E t l I n d e x e s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o T a b l e E t l I n d e x e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s I n d e x N a m e    =    N  ' P r i m a r y K e y '  ,
	             @ i _ C l u s t e r e d    =    1 ,
	             @ i _ U n i q u e    =    1 ,
	             @ i _ P r i m a r y    =    1 ,
	             @ i _ F u l l T e x t    =    0 ,
	             @ i _ s C o l u m n N a m e s    =    N  ' S X u _ E m p l o y e e R o l e K e y '  ,
	             @ i _ s I n c l u d e C o l u m n N a m e s    =    N  ' '  ,
	             @ i _ s F i l t e r C l a u s e    =    N  ' '  ,
	             @ i _ E p i c R e l e a s e d    =    1 ,
	             @ i _ s F u l l T e x t C a t a l o g    =    N  ' '  ,
	             @ i _ s F u l l T e x t I n c l u d e C o l u m n L a n g u a g e s    =    N  ' '  ,
	             @ i _ U s e L o c a l e D e f a u l t F u l l T e x t L a n g u a g e    =    0           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o W a r e h o u s e T a b l e s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   W a r e h o u s e T a b l e s       

 E X E C U T E   C o n s o l e . I n s e r t I n t o W a r e h o u s e T a b l e s             @ i _ s T a b l e E t l N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s T a b l e N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s D e s c r i p t i o n    =    N  ' A   r o w   i n   t h i s   t a b l e   r e p r e s e n t s   a   j o b   r o l e   u n d e r   w h i c h   a n   e m p l o y e e   c a n   l o g   t i m e . '  ,
	             @ i _ s R e p o r t i n g T a b l e T y p e    =    N  ' P r i m a r y '            

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o W a r e h o u s e T a b l e s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o O r g a n i z a t i o n F i l t e r   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   O r g a n i z a t i o n F i l t e r       

 E X E C U T E   C o n s o l e . I n s e r t I n t o O r g a n i z a t i o n F i l t e r             @ i _ s D m c N a m e    =    N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	             @ i _ s R e l e a s e d F i l t e r T y p e    =    N  ' D i s a b l e d '  ,
	             @ i _ x R e l e a s e d J o i n P a t h    =    N U L L ,
	             @ i _ s O v e r r i d e F i l t e r T y p e    =    N U L L ,
	             @ i _ x O v e r r i d e J o i n P a t h    =    N U L L ,
	             @ i _ U s e O v e r r i d e    =    0           

 E X E C U T E   C o n s o l e . P o s t I n s e r t I n t o O r g a n i z a t i o n F i l t e r   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d           

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o D m c D u r a t i o n S t a r t A n d E n d C o l u m n s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   D m c D u r a t i o n S t a r t A n d E n d C o l u m n s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o W i n n i n g B u s i n e s s K e y S o u r c e G r o u p s   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   W i n n i n g B u s i n e s s K e y S o u r c e G r o u p s          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P r e I n s e r t I n t o W i n n i n g B u s i n e s s K e y S e l e c t L o g i c   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d              -   -  

 I n s e r t 
 i n t o   W i n n i n g B u s i n e s s K e y S e l e c t L o g i c          -   -          N o   d a t a                 

 E X E C U T E   C o n s o l e . P o s t D m c S c r i p t   @ s D m c N a m e ,
	   @ E p i c R e l e a s e d ,
	   @ H a s D e v e l o p e r A c c e s s ,
	   @ S c r i p t T y p e              -   -   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *           -   -    P R E  -  C O N V E R S I O N          -   -    T h i s   c o d e   w i l l   b e   e x e c u t e d   b e f o r e   t h e   s c r i p t   s t a r t s   c h a n g i n g   t h e   r e p o r t i n g   t a b l e s .          -   -    R e p l a c e   t h i s   c o m m e n t 
 w i t h   y o u r   c o d e 

 i f   n e e d e d .          -   -  
 F o r   e x a m p l e 

 i f   y o u   h a v e   r e n a m e d   a n   e x i s t i n g   c o l u m n   i n   t h e   m e t a d a t a ,
	   y o u   m a y   w a n t   t o            -   -    a d d   c o d e   t o   r e n a m e   t h e   c o l u m n   h e r e   o t h e r w i s e   t h e   n e w   c o l u m n   w i l l   b e   c r e a t e d   a n d   t h e          -   -    o l d   c o l u m n   w i l l   b e   r e n a m e d   t o   c o l u m n _ o l d .                -   -  

 E X E C U T E    <   <

 i n s e r t   R e p o r t i n g   D a t a b a s e  >   >  . . s p _ r e n a m e    ' d b o . S X u _ E m p l o y e e R o l e D i m X . < < i n s e r t   O l d C o l u m n N a m e > > '  ,
	    ' < < i n s e r t   N e w C o l u m n N a m e > > '  ,
	    ' C O L U M N '           -   -   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *            

 E X E C U T E   C o n s o l e . C r e a t e T a b l e s I n N o n D e v   @ s D m c N a m e ,
	   @ R e m o v e H i s t o r i c a l R o w s              -   -   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *           -   -    P O S T  -  C O N V E R S I O N          -   -    T h i s   c o d e   w i l l   b e   e x e c u t e d   a f t e r   t h e   s c r i p t   h a s   c h a n g e d   t h e   r e p o r t i n g   t a b l e s .          -   -    R e p l a c e   t h i s   c o m m e n t 
 w i t h   y o u r   c o d e 

 i f   n e e d e d .          -   -  
 F o r   e x a m p l e 

 i f   y o u   h a v e   a   c o l u m n 
 w h e r e   t h e   d a t a   t y p e   i s   c h a n g e d   i n   t h e   m e t a d a t a ,
	          -   -    t h e   i n s t a l l   s c r i p t   w i l l   r e n a m e   t h e   e x i s t i n g   c o l u m n   t o   c o l u m n _ o l d .   Y o u   s h o u l d   c o n s i d e r   r e s e t t i n g            -   -    t h e   b a c k f i l l   i d 

 i f   n e e d e d ,
	   a d d   t h e   c o d e   t o   m o v e   t h e   d a t a 
 f r o m   c o l u m n _ o l d   t o   c o l u m n ,
	            -   -    a n d 

 d r o p   c o l u m n _ o l d   i n   a   b a c k g r o u n d   j o b .              -   -    B e l o w   a r e   s i m p l e   e x a m p l e s   o f   a c t i o n s   t h a t   m a y   b e   p e r f o r m e d   v i a   p o s t  -

 c o n v e r s i o n :               -   -      E x a m p l e 

 O n e :    R e s e t   p a c k a g e   b a c k f i l l s          -   -    

 E X E C U T E   E p i c . R e s e t B a c k f i l l L a s t I d   N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	          -   -                      N  ' < < i n s e r t   P a c k a g e N a m e > > '     -   -  

 I f   p a c k a g e   n a m e   i s   N U L L ,
	   b a c k f i l l   i d 
 f o r   a l l   p a c k a g e s 
 f o r   S X u _ E m p l o y e e R o l e D i m X   a r e   u p d a t e d              -   -      E x a m p l e 

 T w o :    C h a n g e   c o l u m n   d a t a   t y p e          -   -    

 E X E C U T E   E p i c . I n s e r t J o b   N  ' D e f e r r e d   c o n v e r s i o n :   P o p u l a t e   c o l u m n   '   ' < < i n s e r t   C o l u m n N a m e > > '   '   i n   t h e   t a b l e   '   ' S X u _ E m p l o y e e R o l e D i m X '   '   '  ,
	          -   -                      N  ' < < i n s e r t   l o g i c   t o   p o p u l a t e   d a t a   a n d   d r o p   c o l u m n _ o l d > > '  ,
	          -   -                      N  ' S X u _ E m p l o y e e R o l e D i m X '  ,
	   N U L L ,
	   N U L L ,
	          -   -                      N  ' < < i n s e r t   P r i o r i t y   f r o m   C o n f i g . J o b P r i o r i t i e s . L a b e l > > '           -   -   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *               -   -    R e l e a s e   t h e   s y s t e m   l e v e l   l o c k       

 E X E C U T E   E p i c . L o c k E t l   N  ' S y s t e m '  ,
	   0 ,
	   @ i _ s L o c k e d B y    =    N  ' C o n s o l e   G e n e r a t e d   S c r i p t '  ,
	   @ i _ I s E x e c u t i o n    =    0         E N D   T R Y     B E G I N   C A T C H          -   -    R e l e a s e   t h e   s y s t e m   l e v e l   l o c k       

 E X E C U T E   E p i c . L o c k E t l   N  ' S y s t e m '  ,
	   0 ,
	   @ i _ s L o c k e d B y    =    N  ' C o n s o l e   G e n e r a t e d   S c r i p t '  ,
	   @ i _ I s E x e c u t i o n    =    0              -   -    T h r o w   t h e   e r r o r   m e s s a g e 

 i f   a n y           ;

   T H R O W ;

         E N D   C A T C H             
