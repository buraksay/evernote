FasdUAS 1.101.10   ��   ��    k             l     ��  ��    M G This script includes examples for using AppleScript to perform several     � 	 	 �   T h i s   s c r i p t   i n c l u d e s   e x a m p l e s   f o r   u s i n g   A p p l e S c r i p t   t o   p e r f o r m   s e v e r a l   
  
 l     ��������  ��  ��        l     ��  ��    "  useful tasks with Evernote.     �   8   u s e f u l   t a s k s   w i t h   E v e r n o t e .      l     ��������  ��  ��        l     ��  ��    L F Each section illustrates a chunk of Evernote's AppleScript interface,     �   �   E a c h   s e c t i o n   i l l u s t r a t e s   a   c h u n k   o f   E v e r n o t e ' s   A p p l e S c r i p t   i n t e r f a c e ,      l     ��������  ��  ��        l     ��  ��    4 . and each section also cleans up after itself.     �   \   a n d   e a c h   s e c t i o n   a l s o   c l e a n s   u p   a f t e r   i t s e l f .       l     ��������  ��  ��      ! " ! l     �� # $��   # J D Please refer to the Evernote application's scripting dictionary for    $ � % % �   P l e a s e   r e f e r   t o   t h e   E v e r n o t e   a p p l i c a t i o n ' s   s c r i p t i n g   d i c t i o n a r y   f o r "  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * J D detailed information and BE CAREFUL: operations that would normally    + � , , �   d e t a i l e d   i n f o r m a t i o n   a n d   B E   C A R E F U L :   o p e r a t i o n s   t h a t   w o u l d   n o r m a l l y )  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 C = confirmation from the user (such as deleting notes, etc) are    2 � 3 3 z   c o n f i r m a t i o n   f r o m   t h e   u s e r   ( s u c h   a s   d e l e t i n g   n o t e s ,   e t c )   a r e 0  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 ? 9 completed without warning when invoked from AppleScript!    9 � : : r   c o m p l e t e d   w i t h o u t   w a r n i n g   w h e n   i n v o k e d   f r o m   A p p l e S c r i p t ! 7  ; < ; l     �� = >��   = H B https://veritrope.com/code/evernote-list-of-note-titles-exporter/    > � ? ? �   h t t p s : / / v e r i t r o p e . c o m / c o d e / e v e r n o t e - l i s t - o f - n o t e - t i t l e s - e x p o r t e r / <  @ A @ l     ��������  ��  ��   A  B C B l    � D���� D O     � E F E k    � G G  H I H I   	������
�� .miscactvnull��� ��� null��  ��   I  J K J l   
 
�� L M��   L � �
	-- customize the following list for master tags
	repeat with tagname in ["Stack Name 1", "Stack 2", "Work", "zzzArchive"]		log tagname		make tag with properties {name:tagname}	end repeat	    M � N N� 
 	 - -   c u s t o m i z e   t h e   f o l l o w i n g   l i s t   f o r   m a s t e r   t a g s 
 	 r e p e a t   w i t h   t a g n a m e   i n   [ " S t a c k   N a m e   1 " ,   " S t a c k   2 " ,   " W o r k " ,   " z z z A r c h i v e " ]  	 	 l o g   t a g n a m e  	 	 m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : t a g n a m e }  	 e n d   r e p e a t  	 K  O P O r   
  Q R Q J   
 ����   R o      ���� 0 
listoftags 
listOfTags P  S T S r     U V U J    ����   V o      ���� "0 listofnotebooks listOfNotebooks T  W X W r     Y Z Y m    ����   Z o      ���� 	0 osman   X  [ \ [ r     ] ^ ] 2    ��
�� 
EVnb ^ o      ���� 0 evstacks EVStacks \  _ ` _ l   ��������  ��  ��   `  a b a r    # c d c 2    !��
�� 
EVnb d o      ���� 0 evnotebooks EVNotebooks b  e f e X   $ � g�� h g k   4 � i i  j k j r   4 9 l m l l  4 7 n���� n l  4 7 o���� o n   4 7 p q p 1   5 7��
�� 
pnam q o   4 5���� "0 currentnotebook currentNotebook��  ��  ��  ��   m o      ���� *0 currentnotebookname currentNotebookName k  r s r s   : > t u t o   : ;���� *0 currentnotebookname currentNotebookName u l      v���� v n       w x w  ;   < = x o   ; <���� "0 listofnotebooks listOfNotebooks��  ��   s  y z y Z   ? \ { |���� { l  ? I }���� } H   ? I ~ ~ l  ? H ����  I  ? H�� ���
�� .coredoexnull���     **** � 5   ? D�� ���
�� 
EVtg � o   A B���� *0 currentnotebookname currentNotebookName
�� kfrmname��  ��  ��  ��  ��   | I  L X�� � �
�� .corecrel****      � null � m   L M��
�� 
EVtg � �� ���
�� 
prdt � K   P T � � �� ���
�� 
pnam � o   Q R���� *0 currentnotebookname currentNotebookName��  ��  ��  ��   z  � � � r   ] f � � � 5   ] b�� ���
�� 
EVtg � o   _ `���� *0 currentnotebookname currentNotebookName
�� kfrmname � o      ���� 0 
currenttag 
currentTag �  � � � l  g g��������  ��  ��   �  � � � X   g � ��� � � I  { ��� � �
�� .EVRNassnnull���     **** � o   { ~���� 0 
currenttag 
currentTag � �� ���
�� 
EV13 � o   � ����� 0 currentnote currentNote��  �� 0 currentnote currentNote � l  j o ����� � l  j o ����� � n   j o � � � 2  k o��
�� 
EVnn � o   j k���� "0 currentnotebook currentNotebook��  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��  �� "0 currentnotebook currentNotebook h o   ' (���� 0 evnotebooks EVNotebooks f  � � � o   � ����� $0 listofnbwostacks listOfNbWoStacks �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � &   set matches to find notes "any"    � � � � @   s e t   m a t c h e s   t o   f i n d   n o t e s   " a n y " �  � � � l  � ���������  ��  ��   �  ��� � l   � ��� � ���   ���
	
  -- create, rename, and delete notebooks
	if (not (notebook named "AppleScriptNotebook1" exists)) then
		-- NOTE also check out the "create notebook" command
		make notebook with properties {name:"AppleScriptNotebook1"}
	end if
	set name of notebook "AppleScriptNotebook1" to "AppleScriptNotebook2"
	-- WARNING there is no confirmation!
	delete notebook "AppleScriptNotebook2"
	
	------------------------------------
	-- create, rename, and delete tags
	if (not (tag named "AppleScriptTag1" exists)) then
		make tag with properties {name:"AppleScriptTag1"}
		-- create a sub-tag
		make tag with properties {name:"AppleScriptTag2", parent:tag named "AppleScriptTag1"}
	end if
	
	set name of tag "AppleScriptTag1" to "AppleScriptTag3"
	-- WARNING there is no confirmation, and all subtags are deleted as well!
	delete tag "AppleScriptTag3"
	
	------------------------------------
	-- create notes, four ways
	-- 1: with plain text
	set notebook1 to create notebook "AppleScriptNotebook1"
	create note title "Note 1" with text "Here is my new text note" notebook notebook1
	-- 2: with html
	create note title "Note 2" with html "<strong>Here is my new HTML note</strong>" notebook notebook1
	-- 3: with the data from a URL
	create note title "Note 3" from url "http://www.evernote.com/media/images/logo.png" notebook notebook1
	-- 4: with the data from a file
	create note title "Note 4" from file "/path/to/a/file.txt" notebook notebook1
	
	-- cleanup
	delete notebook1
	
	------------------------------------
	-- move note between notebooks
	create notebook "AppleScriptNotebook1"
	create notebook "AppleScriptNotebook2"
	create note title "Note 1" with text "Moving note" notebook "AppleScriptNotebook1"
	move note 1 of notebook "AppleScriptNotebook1" to notebook "AppleScriptNotebook2"
	
	-- cleanup
	delete notebook "AppleScriptNotebook1"
	delete notebook "AppleScriptNotebook2"
	
	------------------------------------
	-- delete individual notes
	create notebook "AppleScriptNotebook1"
	create note title "Note 1" with text "Delete this note!" notebook "AppleScriptNotebook1"
	delete note 1 of notebook "AppleScriptNotebook1"
	
	-- cleanup
	delete notebook "AppleScriptNotebook1"
	
	------------------------------------
	-- assign, unnasign tags
	create notebook "AppleScriptNotebook1"
	set note1 to create note title "Note 1" with text "Note 1" notebook "AppleScriptNotebook1"
	set note2 to create note title "Note 2" with text "Note 2" notebook "AppleScriptNotebook1"
	set note3 to create note title "Note 3" with text "Note 3" notebook "AppleScriptNotebook1"
	
	set tag1 to make tag with properties {name:"AppleScriptTag1"}
	set tag2 to make tag with properties {name:"AppleScriptTag2", parent:tag named "AppleScriptTag1"}
	set tag3 to make tag with properties {name:"AppleScriptTag3", parent:tag named "AppleScriptTag1"}
	
	assign tag1 to note1
	assign {tag2, tag3} to {note2, note3}
	
	unassign tag1 from note1
	unassign {tag2, tag3} from {note2, note3}
	
	-- cleanup
	delete notebook "AppleScriptNotebook1"
	delete tag "AppleScriptTag1"
	
	------------------------------------
	-- open a note in its own window
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "Note 1" notebook notebook1
	open note window with note1
	
	-- cleanup
	delay (3) -- wait to be sure new window has opened
	close window 1
	delete notebook1
	
	------------------------------------
	-- change the query used in a note collection window
	-- (assumes the default note collection window is open and is window 1)
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "ONLY ME!" notebook notebook1
	set query string of window 1 to "notebook:AppleScriptNotebook1"
	
	-- cleanup
	delete notebook1
	
	------------------------------------
	-- open a new collection window with a specific query
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "ONLY ME!" notebook notebook1
	open collection window with query string "notebook:AppleScriptNotebook1"
	
	-- cleanup
	delay (3) -- wait to be sure new window has opened
	close window 1
	delete notebook1
	
	------------------------------------
	-- append data to a note
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "foo" notebook notebook1
	
	tell note1 to append html "<strong>bar</strong>"
	tell note1 to append text "baz"
	
	-- cleanup
	delete notebook1
	
	------------------------------------
	-- execute a query and manipulate every note in the result
	-- for details on the query syntax, see our Search Grammar overview
	-- at http://dev.evernote.com/documentation/cloud/chapters/search_grammar.php
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "An apple is a fruit" notebook notebook1
	set note2 to create note with text "An Apple is a computer" notebook notebook1
	set note3 to create note with text "An orange is a fruit" notebook notebook1
	set note4 to create note with text "An Amiga is a computer" notebook notebook1
	
	set tag1 to make tag with properties {name:"AppleScriptTag1"}
		
	set matches to find notes "notebook:AppleScriptNotebook1 apple"
	
	assign tag1 to matches
	
	-- cleanup
	delete tag1
	delete notebook1
	
	------------------------------------
	-- do something with the application's selected notes
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "Note 1" notebook notebook1
	set note2 to create note with text "Note 2" notebook notebook1
	open collection window with query string "notebook:AppleScriptNotebook1"
	
	set tag1 to make tag with properties {name:"AppleScriptTag1"}
	
	delay (3) -- be sure the new window has opened
	
	-- normally, a script would be activated to take action when the user had
	-- made a selection, rather than this artificial demonstration
	
	set noteList to selection
	
	assign tag1 to noteList
	
	-- note: the application's 'selection' property returns the same result as
	-- the selection of window 1, if any
	
	-- cleanup
	close window 1
	delete tag1
	delete notebook1
	
	------------------------------------
	-- please refer to the Evernote application's scripting dictionary
	-- for complete details on the Evernote AppleScript interface
		
	    � � � �10 
 	 
     - -   c r e a t e ,   r e n a m e ,   a n d   d e l e t e   n o t e b o o k s 
 	 i f   ( n o t   ( n o t e b o o k   n a m e d   " A p p l e S c r i p t N o t e b o o k 1 "   e x i s t s ) )   t h e n 
 	 	 - -   N O T E   a l s o   c h e c k   o u t   t h e   " c r e a t e   n o t e b o o k "   c o m m a n d 
 	 	 m a k e   n o t e b o o k   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t N o t e b o o k 1 " } 
 	 e n d   i f 
 	 s e t   n a m e   o f   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 "   t o   " A p p l e S c r i p t N o t e b o o k 2 " 
 	 - -   W A R N I N G   t h e r e   i s   n o   c o n f i r m a t i o n ! 
 	 d e l e t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 2 " 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   c r e a t e ,   r e n a m e ,   a n d   d e l e t e   t a g s 
 	 i f   ( n o t   ( t a g   n a m e d   " A p p l e S c r i p t T a g 1 "   e x i s t s ) )   t h e n 
 	 	 m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 1 " } 
 	 	 - -   c r e a t e   a   s u b - t a g 
 	 	 m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 2 " ,   p a r e n t : t a g   n a m e d   " A p p l e S c r i p t T a g 1 " } 
 	 e n d   i f 
 	 
 	 s e t   n a m e   o f   t a g   " A p p l e S c r i p t T a g 1 "   t o   " A p p l e S c r i p t T a g 3 " 
 	 - -   W A R N I N G   t h e r e   i s   n o   c o n f i r m a t i o n ,   a n d   a l l   s u b t a g s   a r e   d e l e t e d   a s   w e l l ! 
 	 d e l e t e   t a g   " A p p l e S c r i p t T a g 3 " 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   c r e a t e   n o t e s ,   f o u r   w a y s 
 	 - -   1 :   w i t h   p l a i n   t e x t 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 c r e a t e   n o t e   t i t l e   " N o t e   1 "   w i t h   t e x t   " H e r e   i s   m y   n e w   t e x t   n o t e "   n o t e b o o k   n o t e b o o k 1 
 	 - -   2 :   w i t h   h t m l 
 	 c r e a t e   n o t e   t i t l e   " N o t e   2 "   w i t h   h t m l   " < s t r o n g > H e r e   i s   m y   n e w   H T M L   n o t e < / s t r o n g > "   n o t e b o o k   n o t e b o o k 1 
 	 - -   3 :   w i t h   t h e   d a t a   f r o m   a   U R L 
 	 c r e a t e   n o t e   t i t l e   " N o t e   3 "   f r o m   u r l   " h t t p : / / w w w . e v e r n o t e . c o m / m e d i a / i m a g e s / l o g o . p n g "   n o t e b o o k   n o t e b o o k 1 
 	 - -   4 :   w i t h   t h e   d a t a   f r o m   a   f i l e 
 	 c r e a t e   n o t e   t i t l e   " N o t e   4 "   f r o m   f i l e   " / p a t h / t o / a / f i l e . t x t "   n o t e b o o k   n o t e b o o k 1 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   m o v e   n o t e   b e t w e e n   n o t e b o o k s 
 	 c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 2 " 
 	 c r e a t e   n o t e   t i t l e   " N o t e   1 "   w i t h   t e x t   " M o v i n g   n o t e "   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 m o v e   n o t e   1   o f   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 "   t o   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 2 " 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 d e l e t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 2 " 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   d e l e t e   i n d i v i d u a l   n o t e s 
 	 c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 c r e a t e   n o t e   t i t l e   " N o t e   1 "   w i t h   t e x t   " D e l e t e   t h i s   n o t e ! "   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 d e l e t e   n o t e   1   o f   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   a s s i g n ,   u n n a s i g n   t a g s 
 	 c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   t i t l e   " N o t e   1 "   w i t h   t e x t   " N o t e   1 "   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 2   t o   c r e a t e   n o t e   t i t l e   " N o t e   2 "   w i t h   t e x t   " N o t e   2 "   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 3   t o   c r e a t e   n o t e   t i t l e   " N o t e   3 "   w i t h   t e x t   " N o t e   3 "   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 
 	 s e t   t a g 1   t o   m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 1 " } 
 	 s e t   t a g 2   t o   m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 2 " ,   p a r e n t : t a g   n a m e d   " A p p l e S c r i p t T a g 1 " } 
 	 s e t   t a g 3   t o   m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 3 " ,   p a r e n t : t a g   n a m e d   " A p p l e S c r i p t T a g 1 " } 
 	 
 	 a s s i g n   t a g 1   t o   n o t e 1 
 	 a s s i g n   { t a g 2 ,   t a g 3 }   t o   { n o t e 2 ,   n o t e 3 } 
 	 
 	 u n a s s i g n   t a g 1   f r o m   n o t e 1 
 	 u n a s s i g n   { t a g 2 ,   t a g 3 }   f r o m   { n o t e 2 ,   n o t e 3 } 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 d e l e t e   t a g   " A p p l e S c r i p t T a g 1 " 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   o p e n   a   n o t e   i n   i t s   o w n   w i n d o w 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   w i t h   t e x t   " N o t e   1 "   n o t e b o o k   n o t e b o o k 1 
 	 o p e n   n o t e   w i n d o w   w i t h   n o t e 1 
 	 
 	 - -   c l e a n u p 
 	 d e l a y   ( 3 )   - -   w a i t   t o   b e   s u r e   n e w   w i n d o w   h a s   o p e n e d 
 	 c l o s e   w i n d o w   1 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   c h a n g e   t h e   q u e r y   u s e d   i n   a   n o t e   c o l l e c t i o n   w i n d o w 
 	 - -   ( a s s u m e s   t h e   d e f a u l t   n o t e   c o l l e c t i o n   w i n d o w   i s   o p e n   a n d   i s   w i n d o w   1 ) 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   w i t h   t e x t   " O N L Y   M E ! "   n o t e b o o k   n o t e b o o k 1 
 	 s e t   q u e r y   s t r i n g   o f   w i n d o w   1   t o   " n o t e b o o k : A p p l e S c r i p t N o t e b o o k 1 " 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   o p e n   a   n e w   c o l l e c t i o n   w i n d o w   w i t h   a   s p e c i f i c   q u e r y 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   w i t h   t e x t   " O N L Y   M E ! "   n o t e b o o k   n o t e b o o k 1 
 	 o p e n   c o l l e c t i o n   w i n d o w   w i t h   q u e r y   s t r i n g   " n o t e b o o k : A p p l e S c r i p t N o t e b o o k 1 " 
 	 
 	 - -   c l e a n u p 
 	 d e l a y   ( 3 )   - -   w a i t   t o   b e   s u r e   n e w   w i n d o w   h a s   o p e n e d 
 	 c l o s e   w i n d o w   1 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   a p p e n d   d a t a   t o   a   n o t e 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   w i t h   t e x t   " f o o "   n o t e b o o k   n o t e b o o k 1 
 	 
 	 t e l l   n o t e 1   t o   a p p e n d   h t m l   " < s t r o n g > b a r < / s t r o n g > " 
 	 t e l l   n o t e 1   t o   a p p e n d   t e x t   " b a z " 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   e x e c u t e   a   q u e r y   a n d   m a n i p u l a t e   e v e r y   n o t e   i n   t h e   r e s u l t 
 	 - -   f o r   d e t a i l s   o n   t h e   q u e r y   s y n t a x ,   s e e   o u r   S e a r c h   G r a m m a r   o v e r v i e w 
 	 - -   a t   h t t p : / / d e v . e v e r n o t e . c o m / d o c u m e n t a t i o n / c l o u d / c h a p t e r s / s e a r c h _ g r a m m a r . p h p 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   w i t h   t e x t   " A n   a p p l e   i s   a   f r u i t "   n o t e b o o k   n o t e b o o k 1 
 	 s e t   n o t e 2   t o   c r e a t e   n o t e   w i t h   t e x t   " A n   A p p l e   i s   a   c o m p u t e r "   n o t e b o o k   n o t e b o o k 1 
 	 s e t   n o t e 3   t o   c r e a t e   n o t e   w i t h   t e x t   " A n   o r a n g e   i s   a   f r u i t "   n o t e b o o k   n o t e b o o k 1 
 	 s e t   n o t e 4   t o   c r e a t e   n o t e   w i t h   t e x t   " A n   A m i g a   i s   a   c o m p u t e r "   n o t e b o o k   n o t e b o o k 1 
 	 
 	 s e t   t a g 1   t o   m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 1 " } 
 	 	 
 	 s e t   m a t c h e s   t o   f i n d   n o t e s   " n o t e b o o k : A p p l e S c r i p t N o t e b o o k 1   a p p l e " 
 	 
 	 a s s i g n   t a g 1   t o   m a t c h e s 
 	 
 	 - -   c l e a n u p 
 	 d e l e t e   t a g 1 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   d o   s o m e t h i n g   w i t h   t h e   a p p l i c a t i o n ' s   s e l e c t e d   n o t e s 
 	 s e t   n o t e b o o k 1   t o   c r e a t e   n o t e b o o k   " A p p l e S c r i p t N o t e b o o k 1 " 
 	 s e t   n o t e 1   t o   c r e a t e   n o t e   w i t h   t e x t   " N o t e   1 "   n o t e b o o k   n o t e b o o k 1 
 	 s e t   n o t e 2   t o   c r e a t e   n o t e   w i t h   t e x t   " N o t e   2 "   n o t e b o o k   n o t e b o o k 1 
 	 o p e n   c o l l e c t i o n   w i n d o w   w i t h   q u e r y   s t r i n g   " n o t e b o o k : A p p l e S c r i p t N o t e b o o k 1 " 
 	 
 	 s e t   t a g 1   t o   m a k e   t a g   w i t h   p r o p e r t i e s   { n a m e : " A p p l e S c r i p t T a g 1 " } 
 	 
 	 d e l a y   ( 3 )   - -   b e   s u r e   t h e   n e w   w i n d o w   h a s   o p e n e d 
 	 
 	 - -   n o r m a l l y ,   a   s c r i p t   w o u l d   b e   a c t i v a t e d   t o   t a k e   a c t i o n   w h e n   t h e   u s e r   h a d 
 	 - -   m a d e   a   s e l e c t i o n ,   r a t h e r   t h a n   t h i s   a r t i f i c i a l   d e m o n s t r a t i o n 
 	 
 	 s e t   n o t e L i s t   t o   s e l e c t i o n 
 	 
 	 a s s i g n   t a g 1   t o   n o t e L i s t 
 	 
 	 - -   n o t e :   t h e   a p p l i c a t i o n ' s   ' s e l e c t i o n '   p r o p e r t y   r e t u r n s   t h e   s a m e   r e s u l t   a s 
 	 - -   t h e   s e l e c t i o n   o f   w i n d o w   1 ,   i f   a n y 
 	 
 	 - -   c l e a n u p 
 	 c l o s e   w i n d o w   1 
 	 d e l e t e   t a g 1 
 	 d e l e t e   n o t e b o o k 1 
 	 
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 - -   p l e a s e   r e f e r   t o   t h e   E v e r n o t e   a p p l i c a t i o n ' s   s c r i p t i n g   d i c t i o n a r y 
 	 - -   f o r   c o m p l e t e   d e t a i l s   o n   t h e   E v e r n o t e   A p p l e S c r i p t   i n t e r f a c e 
 	 	 
 	��   F m      � ��                                                                                  EVRN  alis    *  Macintosh HD                   BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��   C  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ���� � ��~
�� .aevtoappnull  �   � **** � k     � � �  B�}�}  ��  �   � �|�{�| "0 currentnotebook currentNotebook�{ 0 currentnote currentNote �  ��z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e
�z .miscactvnull��� ��� null�y 0 
listoftags 
listOfTags�x "0 listofnotebooks listOfNotebooks�w 	0 osman  
�v 
EVnb�u 0 evstacks EVStacks�t 0 evnotebooks EVNotebooks
�s 
kocl
�r 
cobj
�q .corecnte****       ****
�p 
pnam�o *0 currentnotebookname currentNotebookName
�n 
EVtg
�m kfrmname
�l .coredoexnull���     ****
�k 
prdt
�j .corecrel****      � null�i 0 
currenttag 
currentTag
�h 
EVnn
�g 
EV13
�f .EVRNassnnull���     ****�e $0 listofnbwostacks listOfNbWoStacks�~ �� �*j OjvE�OjvE�OjE�O*�-E�O*�-E�O m�[��l 
kh  ��,E�O��6GO*���0j  �a ��ll Y hO*���0E` O #�a -[��l 
kh _ a �l [OY��OP[OY��O_ OPUascr  ��ޭ