   M S B A M L   `   `   `  ����^  ZVandeCraenAnton_b1.2_DM_Project_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF$VandeCraenAnton_b1._2_DM_Project_WPF  5   	   :    4VandeCraenAnton_b1._2_DM_Project_WPF.SpelerAanpassen   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   >local2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF  5   	   -   5          � Title$  SpelerAanpassen��5	   	   $	��450��6!   $	��800��6.   .��5
      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   .+�5   
   �� $��2��6   $��Speler Toevoegen��6$   $��Center=�6?   $��20q�6\   $��20(�6h   $	��Top=�6v   �� 5   
   -   5         ��Name$ txtVoornaam��5      $��1��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Voornaam��5      $��100,10,10,10q�5       %  !MaterialDesignFloatingHintTextBox#��[  5      $��Center=�5       �� 5!   
   -   5        $ txtAchternaam��5!      $��1��5"      $��1��5#      $
 Naam��5$      $��10,10,100,10q�5%      #��[  5'      $��Center=�5(      �� 5)   
   -   5        $ 
txtBijnaam��5)      $��2��5*      $��1��5+      $ Bijnaam��5,      $��100,10,10,10q�5-      #��[  5/      $��Center=�50      �� 51   
   -   5         ��Name$ 	cmbRegios��51      $��2��52      $��1��53      $ Regio��54      $��10,20,100,11q�55      58      � 5<   
   $��4��5>      $��100,10,100,10q�5?      $��2��5@       5C      �� 5D      6%   �� 5E      6%   �� 5F      6%    5H      �� 5I      6"   �� 5J      6"   .+�5M      �� $
��Role��6   6'   �� 5N      -   5         ��Name$ chkDPS��5N      $	��DPS��6'   $
��auto��67   $��Center=�6D   $��1��6a   �� 5O      -   5        $ chkTank��5O      $
��Tank��6(   $��1��69   $��Center=�6J   $��1��6g   �� 5P      -   5        $ 
chkSupport��5P      $��Support��6+   $��2��6=   $��Center=�6M   $��1��6j   5R      � 5S   
   $��5��5U      $��100,10,100,10q�5V      $��2��5W       5Z      �� 5[      6%   �� 5\      6%    5_      �� 5`      6"   �� 5a      6"   .+�5d      �� $��Status��6   6)   	� 5e      -	   5         	�Name$ rbActief��5e      $��Actief��6,   $��Center=�6=   $��1��6Z    d� 	IsChecked$
 TrueY�6g   6z   	� 5f      -
   5        $ 
rbInactief��5f      $��Inactief��6.   $��1��6A   $��1��6N   $��Center=�6^   6}   5i      �� 5k   
   -   5        	 ��Name$	 btnSpelerAanpassen��5k       " MaterialDesignRaisedDarkButton#��[ 5l      $��100,30,100,0q�5m      $��30��5n      $
��auto��5o      ���	#FFB12A2A$��0q�5q      $��6��5r      $��1��5s      +  %MaterialDesignThemes.Wpf.ButtonAssist
   CornerRadius$
 25��5u       � ToolTip$7 1MaterialDesignRaisedDarkButton with Round Corners��5v      .��5w      �� $��Speler Aanpassen��5x      5y      �� 5z   
   -   5        $	 
btnSluiten��5z      #��[ 5{      $��100,30,100,0q�5|      $��30��5}      $
��auto��5~      ���	#FFB12A2A$��0q�5�      $��6��5�      $��1��5�      $
 25��5�      $7 1MaterialDesignRaisedDarkButton with Round Corners��5�      .��5�      �� $��Sluiten��5�      5�      5�      5�      