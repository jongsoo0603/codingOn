   �          <         <   �     �         �         �         �        �         �         �         �   ms       ,�        ,�        +�        +�  &     <   -�     &   -�   ����gbp3 ��@ ��hb0�;�M &             ,�        ,�  8   L   +�     8   +�  &                                                    <   -�     &   -�   ���M   �(�                D�       �         �          �         �          �         �          �         �      �  �      �  �   IF ms >= 60 THEN
	ms = 0;
ENDIF;

IF rigth == 1350 THEN
	rigth = 0;
	rigth = rigth + 10;
ENDIF;

IF left == 0 THEN
	left = 1350;
	left = left - 10;
ENDIF;


ms = ms + 1;


IF ms >= 0 AND ms < 20 THEN {�ʷϺ��� ��}
	red = 0;
	green = 1;
	rigth = rigth +10;
	left = left - 10;
	
ELSE IF ms >= 20 AND ms < 40 THEN {������� ��}
	green = 0;
	yellow = 1;
	
	IF rigth <= 450 THEN 
		IF rigth == 450 THEN
			rigth = rigth;
		ELSE
			rigth = rigth + 10;
		ENDIF;
	ELSE IF rigth > 450 AND rigth < 900 THEN {���������� ��}
		rigth = rigth + 30;
	ELSE
		rigth = rigth + 10;
	ENDIF;
	ENDIF;
	
	IF left >= 900 THEN
		IF left == 900 THEN
			left = left;
		ELSE
			left = left - 10;
		ENDIF;
	ELSE IF left > 450 AND left < 900 THEN {���������� ��}
		left = left - 30;
	ELSE
		left = left - 10;
	ENDIF;
	ENDIF;
	
ELSE IF ms >=40 AND ms <= 60 THEN {�������� ��}
	yellow = 0;
	red = 1;
	
	IF rigth <= 450 THEN
		IF rigth == 450 THEN
			rigth = rigth;
		ELSE
			rigth = rigth + 10;
		ENDIF;
	ELSE
		rigth = rigth + 10;
	ENDIF;
	
	IF left >= 900 THEN
		IF left == 900 THEN
			left = left;
		ELSE
			left = left - 10;
		ENDIF;
	
	ELSE
		left = left - 10;
	ENDIF;
ENDIF;
ENDIF;
ENDIF;

       ,�        ,�  �  �  +�     �  +�    &   !  <   60   
	 &      	
 	

   '     F  1350   
	 '      	
	 '     '     
   10 	
 	

   )        
	 )     F  1350 	
	 )     )     
   10 	
 	


 &     &     	


   &   !     #  &        20    {�ʷϺ��� ��}
	 #      	
	 %     	
	 '     '   
   10 	
	 )     )     
   10 	
	
     &   !     20   #  &     (   40    {������� ��}
	 %      	
	 $     	
	
	   '      �  450    
		   '     �  450   
			 '     ' 	
		 
			 '     '     
   10 	
		 	
	     '     �  450   #  '     �  900    {���������� ��}
		 '     '        30 	
	 
		 '     '     
   10 	
	 	
	 	
	
	   )   !  �  900   
		   )     �  900   
			 )     ) 	
		 
			 )     )     
   10 	
		 	
	     )     �  450   #  )     �  900    {���������� ��}
		 )     )        30 	
	 
		 )     )     
   10 	
	 	
	 	
	
     &   !(   40   #  &      <   60    {�������� ��}
	 $      	
	 #     	
	
	   '      �  450   
		   '     �  450   
			 '     ' 	
		 
			 '     '     
   10 	
		 	
	 
		 '     '     
   10 	
	 	
	
	   )   !  �  900   
		   )     �  900   
			 )     ) 	
		 
			 )     )     
   10 	
		 	
	
	 
		 )     )     
   10 	
	 	
 	
 	
 	

      <   -�     &   -�   ���gbp3 ��@ ��hb0�0�9�M          ,�        ,�  �    +�     �  +�  !&   <     	 &  '   F     '  ' '   
   )       ) F  ) )   
   & &   #!&    &      1 G#  % ' '   
   ) )   
   #!&      &   (   �%  $  '   �  0 u '   �    ' '   ' '   
   #'   �  '   �   $ ' '      ' '   
   !)   �  0 u )   �    ) )   ) )   
   #)   �  )   �   $ ) )      ) )   
   #!&   (    &   <     � $  #  '   �  0 B '   �    ' '   ' '   
   ' '   
   !)   �  0 B )   �    ) )   ) )   
   ) )   
   Z         <   -�     &   -�   ���M   �H�                D�      �         �          �         �   d      �                  