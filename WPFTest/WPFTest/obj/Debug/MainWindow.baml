   M S B A M L   `   `   `  ����  WPFTest    WPFTest.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _DevExpress.Xpf.NavBar.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxn4http://schemas.devexpress.com/winfx/2008/xaml/navbar  5   	   c _DevExpress.Xpf.Ribbon.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxr4http://schemas.devexpress.com/winfx/2008/xaml/ribbon  6J   a ]DevExpress.Xpf.Core.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  6�   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  6�     � Title$  MyApp��5   	   $��572.388��6   $��872.761��6(   .��5      � .+�5   
   ]� .+�5      )  #DevExpress.Xpf.Ribbon.RibbonControl  $	��Top=�6       RibbonStyle$ 
Office2010=�65      ShowApplicationButton .     ApplicationMenu 5	      0  *DevExpress.Xpf.Ribbon.BackstageViewControl  5
      .@�5      ,  &DevExpress.Xpf.Ribbon.BackstageTabItem  )  #DevExpress.Xpf.Ribbon.BackstageItem   Content)  #DevExpress.Xpf.Core.ObjectConverter$ Last documents 6/      ControlPane 5      � 5   "   5        5      $ 
Properties 6/    5      � 5   "   5      /  )DevExpress.Xpf.Ribbon.BackstageButtonItem  5      $ Close 62      Glyph 6B   *  $DevExpress.Xpf.Core.DXImageExtension     Image1  +DevExpress.Xpf.Core.Native.DXImageConverter$ Close_32x32.png 5         ToolbarItems 5      '	  !DevExpress.Xpf.Bars.BarButtonItem	  5      !
  DevExpress.Xpf.Bars.BarItem	 
  Content$
	 Undo 6(   
 
  Glyph
 67     $ Undo_16x16.png 	  5      $
	 Redo 6(   
 67     $ Redo_16x16.png    
Categories. 5      5  /DevExpress.Xpf.Ribbon.RibbonDefaultPageCategory  2  ,DevExpress.Xpf.Ribbon.RibbonPageCategoryBase   Pages. 5      &   DevExpress.Xpf.Ribbon.RibbonPage     Caption$
 Home 6%      Groups. 5      +  %DevExpress.Xpf.Ribbon.RibbonPageGroup     Caption$
 File��6.      Items. 5      	  $
	 Open 60   
 6?     $ Open_16x16.png  
  
LargeGlyph 6i     $ Open_32x32.png 	  5       $		 New 60   
 6>     $ New_16x16.png  6g     $ New_32x32.png 	  5!      $
	 Save 60   
 6?     $ Save_16x16.png  6i     $ Save_32x32.png 5"        5#      $ Ribbon Page Group��6.   . 5$      	  $		 Cut 60   
 6>     $ Cut_16x16.png  6g     $ Cut_32x32.png 	  5%      $
	 Copy 60   
 6?     $ Copy_16x16.png  6i     $ Copy_32x32.png 	  5&      $	 Paste 60   
 6@     $ Paste_16x16.png  6k     $ Paste_32x32.png 5'      5(        5)      $ Format 6%   . 5*        $ Text Alignment��6.   . 5+      &   DevExpress.Xpf.Bars.BarCheckItem  -   5          Name$ biLeft��5+   /      
GroupIndex$ 1��6n      	IsChecked$
 TrueY�6}   
 6?     $ AlignLeft_16x16.png 6}     5,      -   5        $ biCenter��5,   /   $ 1��6r   
 6A     $ AlignCenter_16x16.png 6r     5-      -   5        $ biRight��5-   /   $ 1��6p   
 6@     $ AlignRight_16x16.png 6p   5.        5/      $ Print��6.   . 50      	  $	 Print... 60   
 6C     $ Print_16x16.png  6n     $ Print_32x32.png 51      52      53      54      2  ,DevExpress.Xpf.Ribbon.RibbonStatusBarControl  55      $��Bottom=�6)      	LeftItems 56      '  !DevExpress.Xpf.Bars.BarStaticItem  57      $
	 Row: 6(      
ShowBorder .  67     58      $	 1 6(     59      $	 Column: 6(    .  6:     5:      $	 1 6(      RightItemLinks 5<      %  DevExpress.Xpf.Bars.BarItemLink  5=         BarItemName$ biLeft��6&     5>      $ biCenter��6&     5?      $ biRight��6&   5A      � 5B      .+�5C      )  #DevExpress.Xpf.NavBar.NavBarControl  $	��111��6$      View 5D      +  %DevExpress.Xpf.NavBar.ExplorerBarView  5E         Groups. 5G      '  !DevExpress.Xpf.NavBar.NavBarGroup     Header$ Group 1 6&      Items. 5H      &   DevExpress.Xpf.NavBar.NavBarItem     Content$ Item 1 6)     5I      $ Item 2 6)   5J        5K      $ Group 2 6&   . 5L        $ Item 1 6)     5M      $ Item 2 6)   5N      5O      5P      5Q      5R      5S      