 
 p l a y e r   =   g a m e . P l a y e r s . L o c a l P l a y e r  
 c h a r   =   p l a y e r . C h a r a c t e r  
 t o r s o   =   c h a r . T o r s o  
 m o u s e   =   p l a y e r : G e t M o u s e ( )  
 d o w n   =   f a l s e  
 t i m e s   =   1 0 0  
 x   =   1 0  
 z   =   0  
 f u n c t i o n   g r o w ( p a r t )  
     s i z e   =   p a r t . S i z e . X  
     p a r t : R e s i z e ( 1 ,   1 )  
     p a r t . m e s h . S c a l e   =   p a r t . m e s h . S c a l e   +   V e c t o r 3 . n e w ( 0 ,   1 . 5 ,   0 )  
 e n d  
 m   =   I n s t a n c e . n e w ( " M o d e l " ,   c h a r )  
 m . N a m e   =   " B l a c k   S p h e r e "  
 o r b   =   I n s t a n c e . n e w ( " P a r t " ,   m )  
 o r b . C a n C o l l i d e   =   f a l s e  
 o r b . C F r a m e   =   t o r s o . C F r a m e  
 o r b . N a m e   =   " H e a d "  
 o r b . S h a p e   =   " B a l l "  
 o r b . B r i c k C o l o r   =   B r i c k C o l o r . n e w ( " R e a l l y   b l a c k " )  
 o r b . M a t e r i a l   =   " N e o n "  
 o r b . S i z e   =   V e c t o r 3 . n e w ( 1 ,   1 ,   1 )  
 o r b . C a n C o l l i d e   =   f a l s e  
 h u m   =   I n s t a n c e . n e w ( " H u m a n o i d " ,   m )  
 h u m . M a x H e a l t h   =   0  
 b p   =   I n s t a n c e . n e w ( " B o d y P o s i t i o n " ,   o r b )  
 b p . M a x F o r c e   =   V e c t o r 3 . n e w ( m a t h . h u g e ,   m a t h . h u g e ,   m a t h . h u g e )  
 m o u s e . B u t t o n 1 D o w n : c o n n e c t ( f u n c t i o n ( )  
     d o w n   =   t r u e  
     s p i k e   =   I n s t a n c e . n e w ( " P a r t " ,   c h a r )  
     s p i k e . N a m e   =   " S p i k e "  
     s p i k e . S i z e   =   V e c t o r 3 . n e w ( 1 ,   1 ,   1 )  
     s p i k e . B r i c k C o l o r   =   B r i c k C o l o r . n e w ( " R e a l l y   b l a c k " )  
     s p i k e . C a n C o l l i d e   =   f a l s e  
     s p i k e . C F r a m e   =   o r b . C F r a m e  
     s p i k e . T o u c h e d : c o n n e c t ( f u n c t i o n ( h i t )  
         i f   h i t . P a r e n t : F i n d F i r s t C h i l d O f C l a s s ( " H u m a n o i d " )   ~ =   n i l   a n d   h i t . P a r e n t   ~ =   c h a r   t h e n  
             h i t . P a r e n t . H u m a n o i d . H e a l t h   =   0  
         e n d  
     e n d )  
     m e s h   =   I n s t a n c e . n e w ( " S p e c i a l M e s h " ,   s p i k e )  
     m e s h . N a m e   =   " m e s h "  
     m e s h . M e s h I d   =   " h t t p : / / w w w . r o b l o x . c o m / a s s e t / ? i d = 9 2 5 7 3 1 7 "  
     m e s h . S c a l e   =   V e c t o r 3 . n e w ( 5 ,   1 ,   5 )  
     w e l d   =   I n s t a n c e . n e w ( " W e l d " ,   s p i k e )  
     w e l d . P a r t 0   =   s p i k e  
     w e l d . P a r t 1   =   o r b  
     w e l d . C 1   =   C F r a m e . n e w ( 0 ,   1 ,   0 )  
     w h i l e   d o w n   = =   t r u e   d o  
         s p i k e . C F r a m e   =   C F r a m e . n e w ( s p i k e . P o s i t i o n ,   m o u s e . H i t . p )   *   C F r a m e . A n g l e s ( 4 . 7 ,   0 ,   0 )  
         g r o w ( s p i k e )  
         w a i t ( )  
     e n d  
 e n d )  
 m o u s e . B u t t o n 1 U p : c o n n e c t ( f u n c t i o n ( )  
     d o w n   =   f a l s e  
     c h a r . S p i k e : R e m o v e ( )  
 e n d )  
 f u n c t i o n   m o v e ( b p ,   t o r s o )  
     i f   d o w n   = =   f a l s e   t h e n  
         b p . P o s i t i o n   =   V e c t o r 3 . n e w ( t o r s o . C F r a m e . x ,   t o r s o . C F r a m e . y ,   t o r s o . C F r a m e . z )   +   V e c t o r 3 . n e w ( x ,   4 ,   z )  
     e n d  
 e n d  
 w h i l e   t r u e   d o  
     i f   d o w n   = =   f a l s e   t h e n  
         f o r   i   =   1 ,   t i m e s   d o  
             x   =   x   -   0 . 1  
             z   =   z   +   0 . 1  
             m o v e ( b p ,   t o r s o )  
             w a i t ( )  
         e n d  
         f o r   i   =   1 ,   t i m e s   d o  
             x   =   x   -   0 . 1  
             z   =   z   -   0 . 1  
             m o v e ( b p ,   t o r s o )  
             w a i t ( )  
         e n d  
         f o r   i   =   1 ,   t i m e s   d o  
             x   =   x   +   0 . 1  
             z   =   z   -   0 . 1  
             m o v e ( b p ,   t o r s o )  
             w a i t ( )  
         e n d  
         f o r   i   =   1 ,   t i m e s   d o  
             x   =   x   +   0 . 1  
             z   =   z   +   0 . 1  
             m o v e ( b p ,   t o r s o )  
             w a i t ( )  
         e n d  
         w a i t ( )  
     e l s e  
         w a i t ( )  
     e n d  
 e n d  
 