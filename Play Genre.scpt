FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Play selected genre in iTunes --     � 	 	 B   P l a y   s e l e c t e d   g e n r e   i n   i T u n e s   - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 8 2 retrieve list of album names for the given genre     ) � * * d   r e t r i e v e   l i s t   o f   a l b u m   n a m e s   f o r   t h e   g i v e n   g e n r e   '  + , + i      - . - I      �� /����  0 getgenrealbums getGenreAlbums /  0�� 0 o      ���� 0 	genrename 	genreName��  ��   . k     T 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 O     O 9 : 9 k    N ; ;  < = < r     > ? > 6    @ A @ n    
 B C B 2    
��
�� 
cTrk C 4    �� D
�� 
cPly D m    ����  A F     E F E =    G H G 1    ��
�� 
pGen H o    ���� 0 	genrename 	genreName F >    I J I 1    ��
�� 
pKnd J m     K K � L L  P D F   D o c u m e n t ? o      ���� 0 thesongs theSongs =  M N M r     $ O P O J     "����   P o      ���� 0 
albumnames 
albumNames N  Q�� Q X   % N R�� S R Z   5 I T U���� T H   5 ; V V E  5 : W X W o   5 6���� 0 
albumnames 
albumNames X l  6 9 Y���� Y n   6 9 Z [ Z 1   7 9��
�� 
pAlb [ o   6 7���� 0 thesong theSong��  ��   U r   > E \ ] \ b   > C ^ _ ^ o   > ?���� 0 
albumnames 
albumNames _ l  ? B `���� ` n   ? B a b a 1   @ B��
�� 
pAlb b o   ? @���� 0 thesong theSong��  ��   ] o      ���� 0 
albumnames 
albumNames��  ��  �� 0 thesong theSong S o   ( )���� 0 thesongs theSongs��   : m      c c�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   8  d e d L   P R f f o   P Q���� 0 
albumnames 
albumNames e  g�� g l  S S��������  ��  ��  ��   ,  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l A ; retrieve list of songs by the given genre, sorted by album    m � n n v   r e t r i e v e   l i s t   o f   s o n g s   b y   t h e   g i v e n   g e n r e ,   s o r t e d   b y   a l b u m k  o p o i     q r q I      �� s���� ,0 getgenresongsbyalbum getGenreSongsByAlbum s  t�� t o      ���� 0 	genrename 	genreName��  ��   r k     W u u  v w v p       x x ������ 
0 config  ��   w  y z y l     ��������  ��  ��   z  { | { O     R } ~ } k    Q    � � � r     � � � n    
 � � � I    
�� �����  0 getgenrealbums getGenreAlbums �  ��� � o    ���� 0 	genrename 	genreName��  ��   �  f     � o      ���� 0 
albumnames 
albumNames �  � � � r     � � � J    ����   � o      ���� 0 thesongs theSongs �  ��� � X    Q ��� � � k   " L � �  � � � r   " = � � � l  " ; ����� � 6  " ; � � � n   " ( � � � 2   & (��
�� 
cTrk � 4   " &�� �
�� 
cPly � m   $ %����  � F   ) : � � � =  * 1 � � � 1   + -��
�� 
pGen � o   . 0���� 0 	genrename 	genreName � =  2 9 � � � 1   3 5��
�� 
pAlb � o   6 8���� 0 	albumname 	albumName��  ��   � o      ���� 0 
albumsongs 
albumSongs �  � � � r   > F � � � n   > D � � � I   ? D�� ����� .0 sortsongsbyalbumorder sortSongsByAlbumOrder �  ��� � o   ? @���� 0 
albumsongs 
albumSongs��  ��   � o   > ?���� 
0 config   � o      ���� 0 
albumsongs 
albumSongs �  ��� � r   G L � � � b   G J � � � o   G H���� 0 thesongs theSongs � o   H I���� 0 
albumsongs 
albumSongs � o      ���� 0 thesongs theSongs��  �� 0 	albumname 	albumName � o    ���� 0 
albumnames 
albumNames��   ~ m      � ��                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   |  � � � L   S U � � o   S T���� 0 thesongs theSongs �  ��� � l  V V��������  ��  ��  ��   p  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( " play all songs by the given genre    � � � � D   p l a y   a l l   s o n g s   b y   t h e   g i v e n   g e n r e �  � � � i     � � � I      �� ����� 0 	playgenre 	playGenre �  ��� � o      ���� 0 	genrename 	genreName��  ��   � k     + � �  � � � p       � � ������ 
0 config  ��   �  � � � l     ��������  ��  ��   �  � � � n      � � � I    �������� 00 createworkflowplaylist createWorkflowPlaylist��  ��   � o     �� 
0 config   �  � � � n     � � � I    �~�}�|�~  0 disableshuffle disableShuffle�}  �|   � o    �{�{ 
0 config   �  � � � l   �z�y�x�z  �y  �x   �  � � � O    ) � � � k    ( � �  � � � r     � � � n     � � � I    �w ��v�w  0 decodexmlchars decodeXmlChars �  ��u � o    �t�t 0 	genrename 	genreName�u  �v   � o    �s�s 
0 config   � o      �r�r 0 	genrename 	genreName �  � � � r    ! � � � n     � � � I    �q ��p�q ,0 getgenresongsbyalbum getGenreSongsByAlbum �  ��o � o    �n�n 0 	genrename 	genreName�o  �p   �  f     � o      �m�m 0 thesongs theSongs �  ��l � n   " ( � � � I   # (�k ��j�k (0 setplaylisttosongs setPlaylistToSongs �  ��i � o   # $�h�h 0 thesongs theSongs�i  �j   � o   " #�g�g 
0 config  �l   � m     � ��                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   �  ��f � l  * *�e�d�c�e  �d  �c  �f   �  � � � l     �b�a�`�b  �a  �`   �  ��_ � l    ��^�] � I    �\ ��[�\ 0 	playgenre 	playGenre �  ��Z � m     � � � � �  { q u e r y }�Z  �[  �^  �]  �_       �Y � � � � ��Y   � �X�W�V�U�X  0 getgenrealbums getGenreAlbums�W ,0 getgenresongsbyalbum getGenreSongsByAlbum�V 0 	playgenre 	playGenre
�U .aevtoappnull  �   � **** � �T .�S�R � ��Q�T  0 getgenrealbums getGenreAlbums�S �P ��P  �  �O�O 0 	genrename 	genreName�R   � �N�M�L�K�N 0 	genrename 	genreName�M 0 thesongs theSongs�L 0 
albumnames 
albumNames�K 0 thesong theSong �  c�J�I ��H�G K�F�E�D�C
�J 
cPly
�I 
cTrk �  
�H 
pGen
�G 
pKnd
�F 
kocl
�E 
cobj
�D .corecnte****       ****
�C 
pAlb�Q U� L*�l/�-�[[�,\Z�8\[�,\Z�9A1E�OjvE�O (�[��l 	kh ���, ���,%E�Y h[OY��UO�OP � �B r�A�@ � ��?�B ,0 getgenresongsbyalbum getGenreSongsByAlbum�A �> ��>  �  �=�= 0 	genrename 	genreName�@   � �<�;�:�9�8�< 0 	genrename 	genreName�; 0 
albumnames 
albumNames�: 0 thesongs theSongs�9 0 	albumname 	albumName�8 0 
albumsongs 
albumSongs �  ��7�6�5�4�3�2 ��1�0�/�.�7  0 getgenrealbums getGenreAlbums
�6 
kocl
�5 
cobj
�4 .corecnte****       ****
�3 
cPly
�2 
cTrk
�1 
pGen
�0 
pAlb�/ 
0 config  �. .0 sortsongsbyalbumorder sortSongsByAlbumOrder�? X� O)�k+ E�OjvE�O >�[��l kh *�l/�-�[[�,\Z�8\[�,\Z�8A1E�Oʤk+ E�O��%E�[OY��UO�OP � �- ��,�+ � �*�- 0 	playgenre 	playGenre�, �)�)   �(�( 0 	genrename 	genreName�+   � �'�&�' 0 	genrename 	genreName�& 0 thesongs theSongs  �%�$�# ��"�!� �% 
0 config  �$ 00 createworkflowplaylist createWorkflowPlaylist�#  0 disableshuffle disableShuffle�"  0 decodexmlchars decodeXmlChars�! ,0 getgenresongsbyalbum getGenreSongsByAlbum�  (0 setplaylisttosongs setPlaylistToSongs�* ,�j+ O�j+ O� ��k+ E�O)�k+ E�O��k+ UOP � ����
� .aevtoappnull  �   � **** k         ���  �  �     	�  �� "�� ��
� 
psxf
� .sysoexecTEXT���     TEXT
� 
ctxt
� .sysoloadscpt        file� 
0 config  � 0 	playgenre 	playGenre� *��j �&�%/j E�O*�k+ ascr  ��ޭ