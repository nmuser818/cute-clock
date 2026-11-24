Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase, System

$xaml = @'
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Cute Clock" Width="320" Height="160"
        WindowStyle="None" AllowsTransparency="True" Background="Transparent"
        ResizeMode="NoResize" Topmost="True" UseLayoutRounding="False">
  <Viewbox Stretch="Uniform">
    <Canvas Width="320" Height="160">
      <Border Name="card" Canvas.Left="4" Canvas.Top="4" Width="312" Height="152"
              CornerRadius="38" BorderThickness="3" BorderBrush="White" Background="#5b3a8a"/>

      <TextBlock Name="sp1" Canvas.Left="20" Canvas.Top="14" Text="&#x2726;" FontFamily="Segoe UI Symbol" FontSize="18" Foreground="White" IsHitTestVisible="False"/>
      <TextBlock Name="sp2" Canvas.Left="296" Canvas.Top="62" Text="&#x2727;" FontFamily="Segoe UI Symbol" FontSize="14" Foreground="White" IsHitTestVisible="False"/>
      <TextBlock Name="sp3" Canvas.Left="100" Canvas.Top="130" Text="&#x2726;" FontFamily="Segoe UI Symbol" FontSize="16" Foreground="White" IsHitTestVisible="False"/>
      <TextBlock Name="sp4" Canvas.Left="270" Canvas.Top="108" Text="&#x2727;" FontFamily="Segoe UI Symbol" FontSize="13" Foreground="White" IsHitTestVisible="False"/>

      <Viewbox Name="uni" Canvas.Left="14" Canvas.Top="26" Width="108" Height="108" IsHitTestVisible="False">
        <Viewbox.RenderTransform><TranslateTransform x:Name="uniT"/></Viewbox.RenderTransform>
        <Canvas Width="100" Height="106">
          <Canvas Canvas.Top="6">
            <Ellipse Canvas.Left="11" Canvas.Top="27" Width="30" Height="30" Fill="#ff9fcf"/>
            <Ellipse Canvas.Left="9"  Canvas.Top="47" Width="26" Height="26" Fill="#b9a3ff"/>
            <Ellipse Canvas.Left="19" Canvas.Top="63" Width="22" Height="22" Fill="#8fd8ff"/>
            <Path Data="M40,24 L36,6 L54,20 Z" Fill="White" Stroke="#e7c9f5" StrokeThickness="2" StrokeLineJoin="Round"/>
            <Path Data="M41,21 L39,11 L49,19 Z" Fill="#ffc6e0"/>
            <Path Data="M62,22 L72,-2 L76,26 Z" Fill="#ffe27a" Stroke="#f3c64a" StrokeThickness="2" StrokeLineJoin="Round"/>
            <Path Data="M65,16 L74,14 M66,10 L73,8" Stroke="#f3c64a" StrokeThickness="1.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Ellipse Canvas.Left="20" Canvas.Top="26" Width="68" Height="64" Fill="White" Stroke="#e7c9f5" StrokeThickness="2"/>
            <Ellipse Canvas.Left="53" Canvas.Top="61" Width="30" Height="22" Fill="#ffe8f3"/>
            <Ellipse Canvas.Left="62.4" Canvas.Top="70.4" Width="3.2" Height="3.2" Fill="#d98ab4"/>
            <Ellipse Canvas.Left="70.4" Canvas.Top="70.4" Width="3.2" Height="3.2" Fill="#d98ab4"/>
            <Path Data="M62,78 Q68,83 74,78" Stroke="#d98ab4" StrokeThickness="2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Ellipse Canvas.Left="48.5" Canvas.Top="47" Width="11" Height="14" Fill="#5b3a78"/>
            <Ellipse Canvas.Left="53.6" Canvas.Top="48.6" Width="4.8" Height="4.8" Fill="White"/>
            <Ellipse Canvas.Left="51.4" Canvas.Top="55.9" Width="2.2" Height="2.2" Fill="White"/>
            <Ellipse Canvas.Left="38" Canvas.Top="64.5" Width="12" Height="7" Fill="#ffb3d1" Opacity="0.7"/>
            <Path Data="M30,36 Q44,22 58,32 Q46,30 38,46 Q30,44 30,36 Z" Fill="#ff9fcf"/>
          </Canvas>
        </Canvas>
      </Viewbox>

      <!-- ramen bowl (top view) -->
      <Viewbox Name="bowl" Canvas.Left="14" Canvas.Top="26" Width="108" Height="108" IsHitTestVisible="False" Visibility="Collapsed">
        <Viewbox.RenderTransform><TranslateTransform x:Name="bowlT"/></Viewbox.RenderTransform>
        <Canvas Width="100" Height="100">
          <Ellipse Canvas.Left="2" Canvas.Top="3" Width="96" Height="96" Fill="#33000000"/>
          <Ellipse Canvas.Left="1" Canvas.Top="1" Width="98" Height="98" Stroke="#2e1608" StrokeThickness="1.5">
            <Ellipse.Fill>
              <RadialGradientBrush GradientOrigin="0.35,0.3">
                <GradientStop Color="#7a4626" Offset="0"/><GradientStop Color="#5a3016" Offset="0.7"/><GradientStop Color="#42200e" Offset="1"/>
              </RadialGradientBrush>
            </Ellipse.Fill>
          </Ellipse>
          <Ellipse Canvas.Left="7" Canvas.Top="7" Width="86" Height="86" Stroke="#8a5530" StrokeThickness="1" Opacity="0.55"/>
          <Ellipse Canvas.Left="4.5" Canvas.Top="4.5" Width="91" Height="91" Stroke="#2e1608" StrokeThickness="0.8" Opacity="0.5"/>
          <Path Data="M12,32 A40,40 0 0 1 32,12" Stroke="#b07844" StrokeThickness="2.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round" Opacity="0.6"/>
          <Path Data="M86,66 A40,40 0 0 1 68,87" Stroke="#2a1306" StrokeThickness="2" StrokeStartLineCap="Round" StrokeEndLineCap="Round" Opacity="0.5"/>
          <Ellipse Canvas.Left="12" Canvas.Top="12" Width="76" Height="76" Fill="#2a1409"/>
          <Ellipse Canvas.Left="14.5" Canvas.Top="14.5" Width="71" Height="71">
            <Ellipse.Fill>
              <RadialGradientBrush GradientOrigin="0.4,0.35">
                <GradientStop Color="#ff6034" Offset="0"/><GradientStop Color="#e53a1c" Offset="0.6"/><GradientStop Color="#b3200f" Offset="1"/>
              </RadialGradientBrush>
            </Ellipse.Fill>
          </Ellipse>
          <!-- chili oil flecks -->
          <Ellipse Canvas.Left="30" Canvas.Top="24" Width="3" Height="3" Fill="#ff9a3c"/>
          <Ellipse Canvas.Left="72" Canvas.Top="60" Width="3" Height="3" Fill="#ffb347"/>
          <Ellipse Canvas.Left="26" Canvas.Top="68" Width="2.6" Height="2.6" Fill="#ff9a3c"/>
          <Ellipse Canvas.Left="56" Canvas.Top="80" Width="2.6" Height="2.6" Fill="#ffb347"/>
          <Ellipse Canvas.Left="70" Canvas.Top="30" Width="2.4" Height="2.4" Fill="#ff9a3c"/>
          <!-- stage 1 (1/4): noodles -->
          <Canvas Name="gNoodle" Opacity="0">
            <Path Data="M30,50 C32,40 46,38 52,43 C58,48 49,55 43,51 C39,48 44,43 48,45" Stroke="#f6d56c" StrokeThickness="3.4" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M40,64 C48,57 62,60 64,52 C66,46 58,42 54,45" Stroke="#eec44f" StrokeThickness="3.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M34,58 C40,70 54,72 60,66" Stroke="#f6d56c" StrokeThickness="3" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M26,44 C30,32 48,30 58,36 C66,41 70,52 62,58" Stroke="#f6d56c" StrokeThickness="3.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M24,52 C24,64 34,74 46,72 C56,70 66,66 70,58" Stroke="#eec44f" StrokeThickness="3.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M36,40 C42,34 52,34 56,40 C60,46 52,50 48,48" Stroke="#f9e08a" StrokeThickness="2.8" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M30,64 C28,56 34,52 40,54 C46,56 44,62 38,62" Stroke="#eec44f" StrokeThickness="2.8" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M52,64 C58,62 62,66 58,72 C55,76 48,74 50,70" Stroke="#f6d56c" StrokeThickness="2.8" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
          </Canvas>
          <!-- stage 2 (2/4): mushrooms -->
          <Canvas Name="gMush" Opacity="0">
            <!-- halved mushrooms: cap + stem silhouette -->
            <Canvas Canvas.Left="20" Canvas.Top="58" Width="14" Height="15" RenderTransformOrigin="0.5,0.5">
              <Canvas.RenderTransform><RotateTransform Angle="-30"/></Canvas.RenderTransform>
              <Path Data="M4.5,8 L4.5,13 Q4.5,14.6 6,14.6 L8,14.6 Q9.5,14.6 9.5,13 L9.5,8 Z" Fill="#f6e8c8" Stroke="#c9a97a" StrokeThickness="1" StrokeLineJoin="Round"/>
              <Path Data="M0.5,8.4 C0.5,-1 13.5,-1 13.5,8.4 Z" Fill="#a5724a" Stroke="#5e3a22" StrokeThickness="1.2" StrokeLineJoin="Round"/>
              <Path Data="M3,5.5 Q4,2.5 7,2.2" Stroke="#d3a578" StrokeThickness="1" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            </Canvas>
            <Canvas Canvas.Left="61" Canvas.Top="64" Width="14" Height="15" RenderTransformOrigin="0.5,0.5">
              <Canvas.RenderTransform><RotateTransform Angle="35"/></Canvas.RenderTransform>
              <Path Data="M4.5,8 L4.5,13 Q4.5,14.6 6,14.6 L8,14.6 Q9.5,14.6 9.5,13 L9.5,8 Z" Fill="#f6e8c8" Stroke="#c9a97a" StrokeThickness="1" StrokeLineJoin="Round"/>
              <Path Data="M0.5,8.4 C0.5,-1 13.5,-1 13.5,8.4 Z" Fill="#a5724a" Stroke="#5e3a22" StrokeThickness="1.2" StrokeLineJoin="Round"/>
              <Path Data="M3,5.5 Q4,2.5 7,2.2" Stroke="#d3a578" StrokeThickness="1" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            </Canvas>
            <Canvas Canvas.Left="27" Canvas.Top="24" Width="14" Height="15" RenderTransformOrigin="0.5,0.5">
              <Canvas.RenderTransform><RotateTransform Angle="-10"/></Canvas.RenderTransform>
              <Path Data="M4.5,8 L4.5,13 Q4.5,14.6 6,14.6 L8,14.6 Q9.5,14.6 9.5,13 L9.5,8 Z" Fill="#f6e8c8" Stroke="#c9a97a" StrokeThickness="1" StrokeLineJoin="Round"/>
              <Path Data="M0.5,8.4 C0.5,-1 13.5,-1 13.5,8.4 Z" Fill="#a5724a" Stroke="#5e3a22" StrokeThickness="1.2" StrokeLineJoin="Round"/>
              <Path Data="M3,5.5 Q4,2.5 7,2.2" Stroke="#d3a578" StrokeThickness="1" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            </Canvas>
            <!-- scallions arrive together with the mushrooms -->
            <Ellipse Canvas.Left="45" Canvas.Top="23" Width="5.5" Height="5.5" Fill="#8fe060" Stroke="#4aa83a" StrokeThickness="1"/>
            <Ellipse Canvas.Left="53" Canvas.Top="27" Width="5.5" Height="5.5" Fill="#8fe060" Stroke="#4aa83a" StrokeThickness="1"/>
            <Ellipse Canvas.Left="70" Canvas.Top="52" Width="5.5" Height="5.5" Fill="#8fe060" Stroke="#4aa83a" StrokeThickness="1"/>
            <Ellipse Canvas.Left="33" Canvas.Top="47" Width="5.5" Height="5.5" Fill="#8fe060" Stroke="#4aa83a" StrokeThickness="1"/>
            <Ellipse Canvas.Left="58" Canvas.Top="54" Width="5.5" Height="5.5" Fill="#8fe060" Stroke="#4aa83a" StrokeThickness="1"/>
            <Ellipse Canvas.Left="44" Canvas.Top="76" Width="5.5" Height="5.5" Fill="#8fe060" Stroke="#4aa83a" StrokeThickness="1"/>
          </Canvas>
          <!-- stage 3 (3/4): veggies and toppings -->
          <Canvas Name="gVeg" Opacity="0">
            <Rectangle Canvas.Left="70" Canvas.Top="44" Width="14" Height="17" RadiusX="1.5" RadiusY="1.5" Fill="#1f3a2a" Stroke="#142a1e" StrokeThickness="1" RenderTransformOrigin="0.5,0.5">
              <Rectangle.RenderTransform><RotateTransform Angle="20"/></Rectangle.RenderTransform>
            </Rectangle>
            <Ellipse Canvas.Left="60" Canvas.Top="22" Width="14" Height="14" Fill="#fff4f4" Stroke="#ff8fb0" StrokeThickness="1.6"/>
            <Path Data="M67,26 C70,26 70,31 67,31 C65,31 65,28.5 67,28.5" Stroke="#ff8fb0" StrokeThickness="1.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Ellipse Canvas.Left="41" Canvas.Top="66" Width="16" Height="19" Fill="#fff6e0" Stroke="#e6cf9a" StrokeThickness="1.2"/>
            <Ellipse Canvas.Left="45" Canvas.Top="71" Width="8.5" Height="10" Fill="#ffad1f"/>
            <Ellipse Canvas.Left="46.5" Canvas.Top="72.5" Width="3" Height="3.4" Fill="#ffd36b"/>
            <Ellipse Canvas.Left="17" Canvas.Top="41" Width="15" Height="8" Fill="#5cc44f" Stroke="#2e8a2e" StrokeThickness="1" RenderTransformOrigin="0.5,0.5">
              <Ellipse.RenderTransform><RotateTransform Angle="-35"/></Ellipse.RenderTransform>
            </Ellipse>
          </Canvas>
          <!-- boiling bubbles -->
          <Ellipse Name="bub0" Canvas.Left="19" Canvas.Top="46" Width="8" Height="8" Fill="#ff9a80" Stroke="#ffd6c8" StrokeThickness="1" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><ScaleTransform/></Ellipse.RenderTransform></Ellipse>
          <Ellipse Name="bub1" Canvas.Left="73" Canvas.Top="44" Width="9" Height="9" Fill="#ff9a80" Stroke="#ffd6c8" StrokeThickness="1" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><ScaleTransform/></Ellipse.RenderTransform></Ellipse>
          <Ellipse Name="bub2" Canvas.Left="34" Canvas.Top="18" Width="7" Height="7" Fill="#ff9a80" Stroke="#ffd6c8" StrokeThickness="1" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><ScaleTransform/></Ellipse.RenderTransform></Ellipse>
          <Ellipse Name="bub3" Canvas.Left="60" Canvas.Top="76" Width="8" Height="8" Fill="#ff9a80" Stroke="#ffd6c8" StrokeThickness="1" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><ScaleTransform/></Ellipse.RenderTransform></Ellipse>
          <Ellipse Name="bub4" Canvas.Left="44" Canvas.Top="48" Width="6" Height="6" Fill="#ff9a80" Stroke="#ffd6c8" StrokeThickness="1" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><ScaleTransform/></Ellipse.RenderTransform></Ellipse>
          <Ellipse Name="bub5" Canvas.Left="70" Canvas.Top="70" Width="6" Height="6" Fill="#ff9a80" Stroke="#ffd6c8" StrokeThickness="1" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><ScaleTransform/></Ellipse.RenderTransform></Ellipse>
          <Path Data="M24,36 A30,30 0 0 1 40,20" Stroke="White" StrokeThickness="2" StrokeStartLineCap="Round" StrokeEndLineCap="Round" Opacity="0.35"/>
          <!-- final stage: chopsticks laid across the bowl -->
          <Canvas Name="gChop" Opacity="0">
            <Canvas.RenderTransform><TranslateTransform x:Name="chopT"/></Canvas.RenderTransform>
            <Path Data="M5,80 L90,12 M11,91 L96,23" Stroke="#33000000" StrokeThickness="4.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round" RenderTransform="1,0,0,1,1.5,2.5"/>
            <Path Data="M5,80 L90,12 M11,91 L96,23" Stroke="#8a5a2a" StrokeThickness="4" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M5,80 L90,12 M11,91 L96,23" Stroke="#f0cf96" StrokeThickness="2.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            <Path Data="M5,80 L26,63 M11,91 L32,74" Stroke="#c0392b" StrokeThickness="2.6" StrokeStartLineCap="Flat" StrokeEndLineCap="Round"/>
          </Canvas>
        </Canvas>
      </Viewbox>

      <!-- volcano look: everything lives in one layer clipped to the card shape -->
      <Canvas Name="volcL" Canvas.Left="7" Canvas.Top="7" Width="306" Height="146" Visibility="Collapsed" IsHitTestVisible="False">
        <Canvas.Clip><RectangleGeometry Rect="0,0,306,146" RadiusX="35" RadiusY="35"/></Canvas.Clip>
        <!-- clouds -->
        <Canvas Name="gClouds" Opacity="0.9">
          <Ellipse Canvas.Left="14" Canvas.Top="12" Width="22" Height="10" Fill="White"/>
          <Ellipse Canvas.Left="22" Canvas.Top="7" Width="18" Height="13" Fill="White"/>
          <Ellipse Canvas.Left="31" Canvas.Top="12" Width="20" Height="9" Fill="White"/>
          <Ellipse Canvas.Left="100" Canvas.Top="22" Width="20" Height="9" Fill="White"/>
          <Ellipse Canvas.Left="107" Canvas.Top="17" Width="16" Height="12" Fill="White"/>
          <Ellipse Canvas.Left="115" Canvas.Top="22" Width="18" Height="8" Fill="White"/>
        </Canvas>
        <Rectangle Name="skyGrey" Width="306" Height="146" Opacity="0">
          <Rectangle.Fill>
            <LinearGradientBrush StartPoint="0,0" EndPoint="0,1"><GradientStop Color="#4f535e" Offset="0"/><GradientStop Color="#8d919b" Offset="1"/></LinearGradientBrush>
          </Rectangle.Fill>
        </Rectangle>
        <Viewbox Name="volc" Canvas.Left="7" Canvas.Top="19" Width="108" Height="108">
          <Viewbox.RenderTransform><TranslateTransform x:Name="volcT"/></Viewbox.RenderTransform>
          <Canvas Width="100" Height="100">
            <Path Data="M-4,104 L35,28 Q50,21 65,28 L104,104 Z">
              <Path.Fill>
                <LinearGradientBrush StartPoint="0,0" EndPoint="1,0"><GradientStop Color="#7a5645" Offset="0"/><GradientStop Color="#5b3d2f" Offset="0.55"/><GradientStop Color="#3f2a20" Offset="1"/></LinearGradientBrush>
              </Path.Fill>
            </Path>
            <Path Data="M24,62 L30,50 M70,58 L76,70 M40,78 L46,70 M60,80 L66,86" Stroke="#2e1d15" StrokeThickness="1.4" StrokeStartLineCap="Round" StrokeEndLineCap="Round" Opacity="0.55"/>
            <Ellipse Canvas.Left="35.5" Canvas.Top="21.5" Width="29" Height="9" Fill="#24120b" Stroke="#8a6450" StrokeThickness="1.3"/>
            <Ellipse Name="crGlow" Canvas.Left="39" Canvas.Top="23.6" Width="22" Height="4.8" Fill="#ff7a1a" Opacity="0.4"/>
            <!-- lava streams: revealed top-down as the timer runs -->
            <Canvas Name="gFlow">
              <Canvas.Clip><RectangleGeometry Rect="0,0,100,0"/></Canvas.Clip>
              <Path Data="M45,27 C42,38 50,46 43,57 C38,67 45,78 41,95" Stroke="#d9400c" StrokeThickness="4.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
              <Path Data="M45,27 C42,38 50,46 43,57 C38,67 45,78 41,95" Stroke="#ff9a2a" StrokeThickness="2.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
              <Path Data="M55,27 C58,38 53,48 61,58 C67,68 61,80 68,95" Stroke="#d9400c" StrokeThickness="4.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
              <Path Data="M55,27 C58,38 53,48 61,58 C67,68 61,80 68,95" Stroke="#ffb03a" StrokeThickness="2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
              <Path Data="M50,28 C50,36 53,42 51,52" Stroke="#e8500f" StrokeThickness="3.2" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
              <Path Data="M50,28 C50,36 53,42 51,52" Stroke="#ffc24a" StrokeThickness="1.4" StrokeStartLineCap="Round" StrokeEndLineCap="Round"/>
            </Canvas>
            <!-- eruption (only while the alarm rings) -->
            <Canvas Name="gBoom" Visibility="Collapsed">
              <Path Name="plume" Data="M38,26 C28,14 38,-2 50,-12 C62,-2 72,14 62,26 Z" RenderTransformOrigin="0.5,1">
                <Path.RenderTransform><ScaleTransform ScaleX="1" ScaleY="0"/></Path.RenderTransform>
                <Path.Fill>
                  <LinearGradientBrush StartPoint="0,0" EndPoint="0,1"><GradientStop Color="#ffe27a" Offset="0"/><GradientStop Color="#ff7a1a" Offset="0.5"/><GradientStop Color="#d9400c" Offset="1"/></LinearGradientBrush>
                </Path.Fill>
              </Path>
              <Ellipse Name="ash0" Canvas.Left="39" Canvas.Top="4" Width="22" Height="15" Fill="#4a4a52" Opacity="0" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><TransformGroup><ScaleTransform/><TranslateTransform/></TransformGroup></Ellipse.RenderTransform></Ellipse>
              <Ellipse Name="ash1" Canvas.Left="39" Canvas.Top="4" Width="22" Height="15" Fill="#3c3c44" Opacity="0" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><TransformGroup><ScaleTransform/><TranslateTransform/></TransformGroup></Ellipse.RenderTransform></Ellipse>
              <Ellipse Name="ash2" Canvas.Left="39" Canvas.Top="4" Width="22" Height="15" Fill="#5a5a62" Opacity="0" RenderTransformOrigin="0.5,0.5"><Ellipse.RenderTransform><TransformGroup><ScaleTransform/><TranslateTransform/></TransformGroup></Ellipse.RenderTransform></Ellipse>
            </Canvas>
          </Canvas>
        </Viewbox>
        <!-- dark brown ground along the whole bottom -->
        <Path Data="M0,116 Q40,109 82,115 T164,114 T246,112 T306,115 L306,146 L0,146 Z">
          <Path.Fill>
            <LinearGradientBrush StartPoint="0,0" EndPoint="0,1"><GradientStop Color="#6e4628" Offset="0"/><GradientStop Color="#40250f" Offset="1"/></LinearGradientBrush>
          </Path.Fill>
        </Path>
        <Ellipse Canvas.Left="30" Canvas.Top="130" Width="6" Height="3.5" Fill="#2e1a0c"/>
        <Ellipse Canvas.Left="96" Canvas.Top="136" Width="8" Height="4" Fill="#2e1a0c"/>
        <Ellipse Canvas.Left="170" Canvas.Top="128" Width="5" Height="3" Fill="#85592f" Opacity="0.7"/>
        <Ellipse Canvas.Left="226" Canvas.Top="134" Width="7" Height="3.6" Fill="#2e1a0c"/>
        <Ellipse Canvas.Left="274" Canvas.Top="126" Width="5" Height="3" Fill="#85592f" Opacity="0.7"/>
        <Ellipse Canvas.Left="60" Canvas.Top="124" Width="4" Height="2.6" Fill="#85592f" Opacity="0.7"/>
      </Canvas>

      <!-- look switch: shows the look you would switch to -->
      <Border Name="segStyle" Canvas.Left="189" Canvas.Top="14.5" Width="29" Height="29" CornerRadius="14.5" Background="#33FFFFFF" Cursor="Hand" ToolTip="Ramen look">
        <Grid IsHitTestVisible="False">
          <Path Name="icoBowl" Data="M5,11.5 L19,11.5 C19,16.5 16,19.5 12,19.5 C8,19.5 5,16.5 5,11.5 Z M9,21 L15,21 M9,8.5 Q8,7 9.5,5.5 M12,8.5 Q11,7 12.5,5.5 M15,8.5 Q14,7 15.5,5.5" Width="24" Height="24" Stretch="None"
                StrokeThickness="1.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round" StrokeLineJoin="Round" HorizontalAlignment="Center" VerticalAlignment="Center"/>
          <Path Name="icoVolc" Visibility="Collapsed" Data="M3.5,20.5 L9.3,10.5 L14.7,10.5 L20.5,20.5 Z M12,7.6 L12,4 M9.4,7.8 L8,5.2 M14.6,7.8 L16,5.2 M11.2,10.5 L10.6,14 L12.2,16.2" Width="24" Height="24" Stretch="None"
                StrokeThickness="1.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round" StrokeLineJoin="Round" HorizontalAlignment="Center" VerticalAlignment="Center"/>
          <Path Name="icoUni" Visibility="Collapsed" Data="M9,19.5 C6.8,16.5 7,12.5 10,10 C12.2,8.2 16,8.4 17.5,11.2 C18.6,13.3 18.4,15.8 16,16.8 L14,17.4 C13,18.6 12,19.5 9,19.5 Z M12,8.8 L14,3 L15.3,8.9 M10.3,9.6 L9,6.2 L12,8.2 M8.6,10.6 Q5.6,12.5 7.2,16.5 M15.3,12.6 L15.4,12.6" Width="24" Height="24" Stretch="None"
                StrokeThickness="1.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round" StrokeLineJoin="Round" HorizontalAlignment="Center" VerticalAlignment="Center"/>
        </Grid>
      </Border>

      <!-- mode switch -->
      <Border Name="segClock" Canvas.Left="224" Canvas.Top="14.5" Width="29" Height="29" CornerRadius="14.5" Background="#33FFFFFF" Cursor="Hand" ToolTip="Clock">
        <Path Name="txClock" Data="M12,5 A7,7 0 1 1 11.99,5 Z M12,8.5 L12,12.5 L14.8,14" Width="24" Height="24" Stretch="None"
              StrokeThickness="1.7" StrokeStartLineCap="Round" StrokeEndLineCap="Round" StrokeLineJoin="Round"
              HorizontalAlignment="Center" VerticalAlignment="Center" IsHitTestVisible="False"/>
      </Border>
      <Border Name="segTimer" Canvas.Left="259" Canvas.Top="14.5" Width="29" Height="29" CornerRadius="14.5" Background="#33FFFFFF" Cursor="Hand" ToolTip="Timer">
        <Path Name="txTimer" Data="M12,7.5 A6,6 0 1 1 11.99,7.5 Z M12,10.5 L12,13.5 L14,15 M4.8,8 Q5.5,4.5 9,4.6 M19.2,8 Q18.5,4.5 15,4.6 M7.6,18.6 L6.2,20.6 M16.4,18.6 L17.8,20.6" Width="24" Height="24" Stretch="None"
              StrokeThickness="1.6" StrokeStartLineCap="Round" StrokeEndLineCap="Round" StrokeLineJoin="Round"
              HorizontalAlignment="Center" VerticalAlignment="Center" IsHitTestVisible="False"/>
      </Border>

      <TextBlock Name="tbTime" Canvas.Left="128" Canvas.Top="36" FontFamily="Segoe UI" FontWeight="Bold"
                 FontSize="46" Foreground="White" IsHitTestVisible="False"/>
      <TextBlock Name="tbDate" Canvas.Left="130" Canvas.Top="98" FontFamily="Segoe UI" FontWeight="SemiBold"
                 FontSize="16" Foreground="#d8b4f0" IsHitTestVisible="False"/>

      <TextBox Name="tbEdit" Canvas.Left="126" Canvas.Top="36" Width="170" Height="54" Visibility="Collapsed"
               FontFamily="Segoe UI" FontWeight="Bold" FontSize="34" Background="#44000000" Foreground="White"
               CaretBrush="White" BorderThickness="0" Padding="8,0" VerticalContentAlignment="Center" MaxLength="12"/>

      <!-- timer buttons -->
      <Border Name="bM1" Canvas.Left="128" Canvas.Top="98" Width="28" Height="22" CornerRadius="8" Background="#33FFFFFF" Cursor="Hand">
        <TextBlock Text="&#x2212;1" FontFamily="Segoe UI" FontWeight="Bold" FontSize="11" HorizontalAlignment="Center" VerticalAlignment="Center"/></Border>
      <Border Name="bP1" Canvas.Left="162" Canvas.Top="98" Width="28" Height="22" CornerRadius="8" Background="#33FFFFFF" Cursor="Hand">
        <TextBlock Text="+1" FontFamily="Segoe UI" FontWeight="Bold" FontSize="11" HorizontalAlignment="Center" VerticalAlignment="Center"/></Border>
      <Border Name="bP5" Canvas.Left="196" Canvas.Top="98" Width="28" Height="22" CornerRadius="8" Background="#33FFFFFF" Cursor="Hand">
        <TextBlock Text="+5" FontFamily="Segoe UI" FontWeight="Bold" FontSize="11" HorizontalAlignment="Center" VerticalAlignment="Center"/></Border>
      <Border Name="bPlay" Canvas.Left="230" Canvas.Top="98" Width="28" Height="22" CornerRadius="8" Background="#33FFFFFF" Cursor="Hand">
        <TextBlock Name="txPlay" Text="&#x25B6;" FontFamily="Segoe UI Symbol" FontWeight="Bold" FontSize="11" HorizontalAlignment="Center" VerticalAlignment="Center"/></Border>
      <Border Name="bReset" Canvas.Left="264" Canvas.Top="98" Width="28" Height="22" CornerRadius="8" Background="#33FFFFFF" Cursor="Hand">
        <TextBlock Text="&#x21BA;" FontFamily="Segoe UI Symbol" FontWeight="Bold" FontSize="13" HorizontalAlignment="Center" VerticalAlignment="Center"/></Border>

      <!-- lava lamp strip -->
      <Border Name="lava" Canvas.Left="130" Canvas.Top="130" Width="150" Height="8" CornerRadius="4" Background="#33000000" Visibility="Collapsed" IsHitTestVisible="False">
        <Canvas Name="lavaCanvas" Width="150" Height="8" HorizontalAlignment="Left">
          <Canvas.Clip><RectangleGeometry x:Name="lavaClip" Rect="0,0,0,8" RadiusX="4" RadiusY="4"/></Canvas.Clip>
          <Ellipse Name="blob0" Width="34" Height="14" Opacity="0.85"><Ellipse.Effect><BlurEffect Radius="5"/></Ellipse.Effect></Ellipse>
          <Ellipse Name="blob1" Width="30" Height="14" Opacity="0.85"><Ellipse.Effect><BlurEffect Radius="5"/></Ellipse.Effect></Ellipse>
          <Ellipse Name="blob2" Width="38" Height="14" Opacity="0.85"><Ellipse.Effect><BlurEffect Radius="5"/></Ellipse.Effect></Ellipse>
        </Canvas>
      </Border>

      <Grid Name="grip" Canvas.Left="286" Canvas.Top="126" Width="26" Height="26" Background="#01000000"
            Cursor="SizeNWSE" Opacity="0">
        <Path Data="M20,6 L20,20 L6,20" Stroke="#b184c2" StrokeThickness="3" StrokeStartLineCap="Round"
              StrokeEndLineCap="Round" StrokeLineJoin="Round" IsHitTestVisible="False"/>
      </Grid>
    </Canvas>
  </Viewbox>
</Window>
'@

# ---------- settings ----------
$settingsDir  = Join-Path $env:APPDATA 'cute-clock'
$settingsFile = Join-Path $settingsDir 'settings.json'
$S = @{ h24 = $false; seconds = $false; date = $true; onTop = $true; theme = 'plum'; style = 'unicorn'; mode = 'clock'; width = 320.0; left = $null; top = $null }
try {
    $saved = Get-Content $settingsFile -Raw -ErrorAction Stop | ConvertFrom-Json
    foreach ($p in $saved.PSObject.Properties) { if ($S.ContainsKey($p.Name)) { $S[$p.Name] = $p.Value } }
} catch {}

function Save-Settings {
    try {
        New-Item -ItemType Directory -Force $settingsDir | Out-Null
        $S.left = $win.Left; $S.top = $win.Top; $S.width = $win.Width
        $S | ConvertTo-Json | Set-Content $settingsFile -Encoding UTF8
    } catch {}
}

$themes = @{
    plum     = @{ a = '#5b3a8a'; b = '#33205c'; text = '#ffeaf7'; sub = '#d8b4f0'; border = '#cfb6f2' }
    rose     = @{ a = '#a24d80'; b = '#58306f'; text = '#fff0f8'; sub = '#f3c3df'; border = '#f0b6d8' }
    ocean    = @{ a = '#2f6392'; b = '#3b2f78'; text = '#eaf5ff'; sub = '#a9cff2'; border = '#a9cff2' }
    midnight = @{ a = '#241d4a'; b = '#120f2b'; text = '#ffeaf6'; sub = '#b9a3e8'; border = '#6f5fb0' }
    ramen    = @{ a = '#fff4b8'; b = '#ffe48a'; text = '#5a2412'; sub = '#b0502a'; border = '#e3b54a' }
    volcano  = @{ a = '#3d9be0'; b = '#a6dcf8'; text = '#ffffff'; sub = '#e6f5ff'; border = '#d6efff' }
}
# shared button colours; the ramen look needs dark-tinted buttons on its light background
foreach ($k in @($themes.Keys)) {
    if ($k -eq 'ramen') { $themes[$k] += @{ btn = '#225a2412'; hover = '#445a2412'; segOn = '#455a2412'; segOff = '#1f5a2412'; edit = '#99FFFFFF' } }
    else { $themes[$k] += @{ btn = '#33FFFFFF'; hover = '#66FFFFFF'; segOn = '#66FFFFFF'; segOff = '#26FFFFFF'; edit = '#44000000' } }
}
if (-not $themes.ContainsKey([string]$S.theme) -or $S.theme -in 'ramen', 'volcano') { $S.theme = 'plum' }
if ($S.style -notin 'ramen', 'volcano') { $S.style = 'unicorn' }
function Get-ThemeKey { if ($S.style -in 'ramen', 'volcano') { [string]$S.style } else { [string]$S.theme } }
if ($S.mode -ne 'timer') { $S.mode = 'clock' }

# ---------- window ----------
$win = [Windows.Markup.XamlReader]::Parse($xaml)
$ui = @{}
foreach ($n in 'card','tbTime','tbDate','grip','segStyle','icoBowl','icoUni','icoVolc','bowl','volcL','volc','crGlow','gFlow','gBoom','plume','skyGrey','ash0','ash1','ash2','bub0','bub1','bub2','bub3','bub4','bub5','gNoodle','gMush','gVeg','gChop','segClock','segTimer','txClock','txTimer','bM1','bP1','bP5','bPlay','bReset','txPlay',
               'lava','lavaCanvas','tbEdit','blob0','blob1','blob2','sp1','sp2','sp3','sp4','uni') { $ui[$n] = $win.FindName($n) }
$uniT = $ui.uni.RenderTransform
$bowlT = $ui.bowl.RenderTransform
$volcT = $ui.volc.RenderTransform
$ashes = @($ui.ash0, $ui.ash1, $ui.ash2)
# flying rocks and lava blobs for the eruption (created here so the XAML stays short)
$rocks = @()
$rockSpec = @(
    @(-26,-78,'#3b2a22',5), @(22,-86,'#ff7a1a',4), @(-12,-96,'#2e1d15',4.5), @(32,-70,'#4a3326',5.5),
    @(6,-100,'#ffc23a',3.5), @(-34,-66,'#ff5a14',4), @(14,-90,'#3b2a22',4), @(-20,-88,'#ff9a2a',3.6),
    @(38,-80,'#2e1d15',5), @(-4,-84,'#d9400c',4.2)
)
foreach ($rs in $rockSpec) {
    $e = New-Object Windows.Shapes.Ellipse
    $e.Width = $rs[3]; $e.Height = $rs[3] * 0.85; $e.Opacity = 0
    $e.Fill = New-Object Windows.Media.SolidColorBrush ([Windows.Media.ColorConverter]::ConvertFromString($rs[2]))
    $ui.gBoom.Children.Add($e) | Out-Null
    $rocks += @{ el = $e; vx = [double]$rs[0]; vy = [double]$rs[1] }
}
$bubbles = @($ui.bub0, $ui.bub1, $ui.bub2, $ui.bub3, $ui.bub4, $ui.bub5)
$lavaClip = $ui.lavaCanvas.Clip
$sparks = @($ui.sp1, $ui.sp2, $ui.sp3, $ui.sp4)
$blobs = @($ui.blob0, $ui.blob1, $ui.blob2)
$buttons = @($ui.bM1, $ui.bP1, $ui.bP5, $ui.bPlay, $ui.bReset)

function Brush($hex) { New-Object Windows.Media.SolidColorBrush ([Windows.Media.ColorConverter]::ConvertFromString($hex)) }
function Color($hex) { [Windows.Media.ColorConverter]::ConvertFromString($hex) }
function Hsv([double]$h, [double]$sat, [double]$val) {
    $h = (($h % 360) + 360) % 360
    $c = $val * $sat; $x = $c * (1 - [Math]::Abs((($h / 60) % 2) - 1)); $m = $val - $c
    switch ([int][Math]::Floor($h / 60)) {
        0 { $r = $c; $g = $x; $b = 0 } 1 { $r = $x; $g = $c; $b = 0 } 2 { $r = 0; $g = $c; $b = $x }
        3 { $r = 0; $g = $x; $b = $c } 4 { $r = $x; $g = 0; $b = $c } default { $r = $c; $g = 0; $b = $x }
    }
    [Windows.Media.Color]::FromRgb([byte](($r + $m) * 255), [byte](($g + $m) * 255), [byte](($b + $m) * 255))
}

# lava lamp brushes
$lavaStops = @()
$lavaBrush = New-Object Windows.Media.LinearGradientBrush
$lavaBrush.StartPoint = '0,0'; $lavaBrush.EndPoint = '1,0'
for ($i = 0; $i -lt 4; $i++) {
    $gs = New-Object Windows.Media.GradientStop ([Windows.Media.Colors]::Pink), ($i / 3.0)
    $lavaBrush.GradientStops.Add($gs); $lavaStops += $gs
}
$ui.lavaCanvas.Background = $lavaBrush
foreach ($b in $blobs) { $b.Fill = New-Object Windows.Media.SolidColorBrush ([Windows.Media.Colors]::White) }

$borderBrush = New-Object Windows.Media.SolidColorBrush ([Windows.Media.Colors]::White)
$ui.card.BorderBrush = $borderBrush
$script:themeBorder = Color '#ffffff'

# ---------- timer state ----------
$TM = @{ state = 'idle'; remaining = 0.0; total = 0.0; end = [DateTime]::Now; lastChime = [DateTime]::MinValue; chimes = 0 }
$script:editing = $false
$script:gotFocus = $false
$MAX_SECS = 359999.0

function Get-Remaining {
    if ($TM.state -eq 'running') { [Math]::Max(0.0, ($TM.end - (Get-Date)).TotalSeconds) } else { [double]$TM.remaining }
}
# change the remaining time by delta seconds (total grows with it so the progress bar stays honest)
function Add-Seconds([double]$delta) {
    $old = Get-Remaining
    $nr = [Math]::Min($MAX_SECS, $old + $delta)
    if ($TM.state -eq 'running') { $nr = [Math]::Max(1.0, $nr); $TM.end = (Get-Date).AddSeconds($nr) }
    else { $nr = [Math]::Max(0.0, $nr); $TM.remaining = $nr }
    $TM.total = [Math]::Max($nr, $TM.total + ($nr - $old))
    $script:lastKey = ''
}
# set the remaining time to an exact value
function Set-Seconds([double]$secs) {
    $secs = [Math]::Max(0.0, [Math]::Min($MAX_SECS, $secs))
    if ($TM.state -eq 'running') { if ($secs -lt 1) { $secs = 1.0 }; $TM.end = (Get-Date).AddSeconds($secs) } else { $TM.remaining = $secs }
    $TM.total = $secs
    $script:lastKey = ''
}
function Add-Minutes([int]$n) { Add-Seconds ($n * 60.0) }
function Toggle-Play {
    if ($TM.state -eq 'running') { $TM.remaining = Get-Remaining; $TM.state = 'idle' }
    elseif ($TM.remaining -gt 0) { $TM.state = 'running'; $TM.end = (Get-Date).AddSeconds($TM.remaining); if ($TM.total -lt $TM.remaining) { $TM.total = $TM.remaining } }
    $script:lastKey = ''
}
function Reset-Timer { $TM.state = 'idle'; $TM.remaining = [double]$TM.total; $script:lastKey = '' }

# "25" = minutes, "5:30" = m:ss, "1:02:03" = h:mm:ss, "90s", "1h30m". Leading + or - means add / subtract.
function Parse-TimeInput([string]$txt) {
    $t = $txt.Trim().ToLower(); $rel = $false; $sign = 1
    if ($t.StartsWith('+')) { $rel = $true; $t = $t.Substring(1).Trim() }
    elseif ($t.StartsWith('-')) { $rel = $true; $sign = -1; $t = $t.Substring(1).Trim() }
    $inv = [Globalization.CultureInfo]::InvariantCulture
    $secs = $null
    if ($t -match '^\d+(\.\d+)?$') { $secs = [double]::Parse($t, $inv) * 60 }
    elseif ($t -match '^(\d+):(\d{1,2})$') { $secs = [double]$matches[1] * 60 + [double]$matches[2] }
    elseif ($t -match '^(\d+):(\d{1,2}):(\d{1,2})$') { $secs = [double]$matches[1] * 3600 + [double]$matches[2] * 60 + [double]$matches[3] }
    elseif ($t -match '^(?:(\d+)\s*h)?\s*(?:(\d+)\s*m(?:in)?)?\s*(?:(\d+)\s*s(?:ec)?)?$' -and $t.Length -gt 0) {
        $secs = 0.0
        if ($matches[1]) { $secs += [double]$matches[1] * 3600 }
        if ($matches[2]) { $secs += [double]$matches[2] * 60 }
        if ($matches[3]) { $secs += [double]$matches[3] }
    }
    if ($null -eq $secs) { return $null }
    @{ rel = $rel; secs = $secs * $sign }
}
function Begin-Edit {
    if ($S.mode -ne 'timer' -or $TM.state -eq 'ringing' -or $script:editing) { return }
    $script:editing = $true
    $ui.tbEdit.Text = ''
    $script:lastKey = ''; Update-Display
    $script:gotFocus = $false
    $win.Activate() | Out-Null
    # focus after layout has made the box visible, otherwise Focus() silently fails
    $win.Dispatcher.BeginInvoke([Windows.Threading.DispatcherPriority]::Input, [Action]{
        $ui.tbEdit.Focus() | Out-Null
        [Windows.Input.Keyboard]::Focus($ui.tbEdit) | Out-Null
    }) | Out-Null
}
function End-Edit([bool]$commit) {
    if (-not $script:editing) { return }
    $script:editing = $false
    $txt = $ui.tbEdit.Text
    if ($commit -and $txt.Trim()) {
        $r = Parse-TimeInput $txt
        if ($r) { if ($r.rel) { Add-Seconds $r.secs } else { Set-Seconds $r.secs } }
    }
    $script:lastKey = ''; Update-Display
}
function Set-Mode($m) { $S.mode = $m; $script:lastKey = ''; Update-Display; Save-Settings }

# ---------- alarm chime (generated in memory, no files) ----------
function New-ChimePlayer {
    $rate = 22050; $freqs = 1046.5, 1318.5, 1568.0; $gap = 0.22
    $total = [int]($rate * ($gap * 2 + 0.9))
    $buf = New-Object 'double[]' $total
    for ($k = 0; $k -lt 3; $k++) {
        $start = [int]($k * $gap * $rate); $f = $freqs[$k]
        for ($n = 0; $n -lt [int](0.7 * $rate); $n++) {
            $i = $start + $n; if ($i -ge $total) { break }
            $tt = $n / $rate; $env = [Math]::Exp(-$tt * 6) * [Math]::Min(1.0, $n / 150.0)
            $buf[$i] += ([Math]::Sin(6.2831853 * $f * $tt) + 0.25 * [Math]::Sin(12.5663706 * $f * $tt)) * $env * 0.35
        }
    }
    $ms = New-Object IO.MemoryStream; $bw = New-Object IO.BinaryWriter $ms
    $dataLen = $total * 2
    $bw.Write([Text.Encoding]::ASCII.GetBytes('RIFF')); $bw.Write([int](36 + $dataLen))
    $bw.Write([Text.Encoding]::ASCII.GetBytes('WAVEfmt ')); $bw.Write([int]16); $bw.Write([int16]1); $bw.Write([int16]1)
    $bw.Write([int]$rate); $bw.Write([int]($rate * 2)); $bw.Write([int16]2); $bw.Write([int16]16)
    $bw.Write([Text.Encoding]::ASCII.GetBytes('data')); $bw.Write([int]$dataLen)
    foreach ($v in $buf) { $bw.Write([int16]([Math]::Max(-1.0, [Math]::Min(1.0, $v)) * 32000)) }
    $bw.Flush(); $ms.Position = 0
    $sp = New-Object System.Media.SoundPlayer $ms; $sp.Load(); $sp
}
$chime = $null
try { $chime = New-ChimePlayer } catch {}
function Play-Chime {
    try { if ($chime) { $chime.Play() } else { [System.Media.SystemSounds]::Exclamation.Play() } } catch {}
}

# ---------- theme / chrome ----------
function Update-Chrome {
    $t = $themes[(Get-ThemeKey)]
    $on = Brush $t.text; $off = Brush $t.sub
    $isTimer = ($S.mode -eq 'timer')
    $ui.segClock.Background = Brush $(if ($isTimer) { $t.segOff } else { $t.segOn })
    $ui.segTimer.Background = Brush $(if ($isTimer) { $t.segOn } else { $t.segOff })
    $ui.txClock.Stroke = if ($isTimer) { $off } else { $on }
    $ui.txTimer.Stroke = if ($isTimer) { $on } else { $off }
    # look switch shows the NEXT look in the cycle: unicorn -> (bowl) ramen -> (volcano) -> (unicorn)
    $st = [string]$S.style
    $ui.segStyle.Background = Brush $t.btn
    $ui.icoBowl.Stroke = $on; $ui.icoUni.Stroke = $on; $ui.icoVolc.Stroke = $on
    $ui.icoBowl.Visibility = if ($st -eq 'unicorn') { 'Visible' } else { 'Collapsed' }
    $ui.icoVolc.Visibility = if ($st -eq 'ramen') { 'Visible' } else { 'Collapsed' }
    $ui.icoUni.Visibility = if ($st -eq 'volcano') { 'Visible' } else { 'Collapsed' }
    $ui.segStyle.ToolTip = switch ($st) { 'unicorn' { 'Ramen look' } 'ramen' { 'Volcano look' } default { 'Unicorn look' } }
}
function Set-Style($name) {
    $S.style = $name; Apply-Theme; Update-Display; Save-Settings
}
function Apply-Theme {
    $t = $themes[(Get-ThemeKey)]
    $st = [string]$S.style
    $ui.uni.Visibility = if ($st -eq 'unicorn') { 'Visible' } else { 'Collapsed' }
    $ui.bowl.Visibility = if ($st -eq 'ramen') { 'Visible' } else { 'Collapsed' }
    $ui.volcL.Visibility = if ($st -eq 'volcano') { 'Visible' } else { 'Collapsed' }
    foreach ($sp in $sparks) { $sp.Visibility = if ($st -eq 'unicorn') { 'Visible' } else { 'Collapsed' } }
    $ui.tbEdit.Background = Brush $t.edit
    foreach ($b in $buttons) { $b.Background = Brush $t.btn }
    $g = New-Object Windows.Media.LinearGradientBrush
    $g.StartPoint = '0,0'; $g.EndPoint = '1,1'
    $g.GradientStops.Add((New-Object Windows.Media.GradientStop (Color $t.a), 0))
    $g.GradientStops.Add((New-Object Windows.Media.GradientStop (Color $t.b), 1))
    $ui.card.Background = $g
    $script:themeBorder = Color $t.border
    $borderBrush.Color = $script:themeBorder
    $ui.tbTime.Foreground = Brush $t.text
    $ui.tbEdit.Foreground = Brush $t.text; $ui.tbEdit.CaretBrush = Brush $t.text
    $ui.tbDate.Foreground = Brush $t.sub
    $ui.grip.Children[0].Stroke = Brush $t.sub
    foreach ($b in $buttons) { $b.Child.Foreground = Brush $t.text }
    $script:lastKey = ''
    Update-Chrome
}

# ---------- display ----------
$script:lastKey = ''
function Update-Display {
    $isTimer = ($S.mode -eq 'timer')
    $ringing = ($TM.state -eq 'ringing')
    $dateText = ''; $big = ''; $small = ''
    if ($isTimer) {
        $secs = [int][Math]::Ceiling((Get-Remaining) - 0.0001)
        if ($secs -ge 3600) { $big = '{0}:{1:00}:{2:00}' -f [int][Math]::Floor($secs / 3600), [int][Math]::Floor(($secs % 3600) / 60), ($secs % 60) }
        else { $big = '{0:00}:{1:00}' -f [int][Math]::Floor($secs / 60), ($secs % 60) }
        if ($ringing) { $dateText = "time's up! tap to stop" }
        elseif ($script:editing) { $dateText = '25, 5:30 or +5' }
    } else {
        $d = Get-Date
        $h = $d.Hour
        if (-not $S.h24) { $small = if ($h -ge 12) { 'PM' } else { 'AM' }; $h = $h % 12; if ($h -eq 0) { $h = 12 } }
        $big = if ($S.h24) { '{0:00}:{1:00}' -f $h, $d.Minute } else { '{0}:{1:00}' -f $h, $d.Minute }
        if ($S.seconds) { $big += ':{0:00}' -f $d.Second }
        if ($S.date) { $dateText = $d.ToString('ddd, MMM d') }
    }
    $playGlyph = if ($TM.state -eq 'running') { [string][char]0x275A + [char]0x275A } else { [string][char]0x25B6 }
    $key = "$($S.mode)|$big|$small|$dateText|$($TM.state)|$($S.seconds)|$playGlyph|$($script:editing)"
    if ($key -eq $script:lastKey) { return }
    $script:lastKey = $key

    $long = $big.Length -gt 5
    $ui.tbTime.FontSize = if ($long) { 34 } else { 46 }
    $ui.tbTime.Inlines.Clear()
    $ui.tbTime.Inlines.Add((New-Object Windows.Documents.Run $big))
    if ($small) { $r = New-Object Windows.Documents.Run (' ' + $small); $r.FontSize = 17; $ui.tbTime.Inlines.Add($r) }
    $ui.tbDate.Text = $dateText
    $ui.tbDate.Visibility = if ($dateText) { 'Visible' } else { 'Collapsed' }
    $editingNow = $isTimer -and $script:editing
    $ui.tbEdit.Visibility = if ($editingNow) { 'Visible' } else { 'Collapsed' }
    $ui.tbTime.Visibility = if ($editingNow) { 'Collapsed' } else { 'Visible' }
    $canEdit = $isTimer -and (-not $ringing)
    $ui.tbTime.IsHitTestVisible = $canEdit
    $ui.tbTime.Cursor = if ($canEdit) { [Windows.Input.Cursors]::IBeam } else { $null }
    $ui.tbTime.ToolTip = if ($canEdit) { 'Click to type a time' } else { $null }
    $showBtns = $isTimer -and (-not $ringing) -and (-not $editingNow)
    foreach ($b in $buttons) { $b.Visibility = if ($showBtns) { 'Visible' } else { 'Collapsed' } }
    $ui.txPlay.Text = $playGlyph
    Update-Chrome
}

# ---------- init ----------
$area = [Windows.SystemParameters]::WorkArea
$w = [Math]::Max(140.0, [double]$S.width)
$win.Width = $w; $win.Height = $w / 2
$win.Left = if ($null -ne $S.left) { [double]$S.left } else { $area.Right - $w - 40 }
$win.Top  = if ($null -ne $S.top)  { [double]$S.top }  else { $area.Top + 40 }
if ($win.Left -gt $area.Right - 40 -or $win.Left -lt $area.Left - $w + 40) { $win.Left = $area.Right - $w - 40 }
if ($win.Top -gt $area.Bottom - 40 -or $win.Top -lt $area.Top) { $win.Top = $area.Top + 40 }
$win.Topmost = [bool]$S.onTop
Apply-Theme; Update-Display

# ---------- typing a time ----------
$ui.tbTime.Add_MouseLeftButtonDown({ Begin-Edit; $_.Handled = $true })
$ui.tbEdit.Add_KeyDown({
    if ($_.Key -eq 'Return' -or $_.Key -eq 'Enter') { End-Edit $true; $_.Handled = $true }
    elseif ($_.Key -eq 'Escape') { End-Edit $false; $_.Handled = $true }
})
$ui.tbEdit.Add_GotKeyboardFocus({ $script:gotFocus = $true })
$ui.tbEdit.Add_LostKeyboardFocus({ if ($script:gotFocus) { End-Edit $true } })
$ui.tbEdit.Add_MouseLeftButtonDown({ $_.Handled = $true })

# ---------- mode switch ----------
$ui.segClock.Add_MouseLeftButtonDown({ Set-Mode 'clock'; $_.Handled = $true })
$ui.segTimer.Add_MouseLeftButtonDown({ Set-Mode 'timer'; $_.Handled = $true })

# ---------- timer buttons ----------
foreach ($b in $buttons) {
    $b.Add_MouseEnter({ $this.Background = Brush $themes[(Get-ThemeKey)].hover })
    $b.Add_MouseLeave({ $this.Background = Brush $themes[(Get-ThemeKey)].btn })
}
$ui.segStyle.Add_MouseLeftButtonDown({
    # cycle: unicorn -> ramen -> volcano -> unicorn
    Set-Style $(switch ($S.style) { 'unicorn' { 'ramen' } 'ramen' { 'volcano' } default { 'unicorn' } }); $_.Handled = $true
})
$ui.bM1.Add_MouseLeftButtonDown({ Add-Minutes -1; Update-Display; $_.Handled = $true })
$ui.bP1.Add_MouseLeftButtonDown({ Add-Minutes 1; Update-Display; $_.Handled = $true })
$ui.bP5.Add_MouseLeftButtonDown({ Add-Minutes 5; Update-Display; $_.Handled = $true })
$ui.bPlay.Add_MouseLeftButtonDown({ Toggle-Play; Update-Display; $_.Handled = $true })
$ui.bReset.Add_MouseLeftButtonDown({ Reset-Timer; Update-Display; $_.Handled = $true })
$win.Add_MouseWheel({
    if ($S.mode -eq 'timer' -and $TM.state -ne 'ringing') {
        if ($_.Delta -gt 0) { Add-Minutes 1 } else { Add-Minutes -1 }
        Update-Display
    }
})

# ---------- drag to move (or tap to dismiss alarm) ----------
$win.Add_MouseLeftButtonDown({
    if ($script:editing) { End-Edit $true; return }   # click outside the box finishes typing
    if ($TM.state -eq 'ringing') { Reset-Timer; Update-Display; return }
    try { $win.DragMove(); Save-Settings } catch {}
})

# ---------- drag corner to resize (aspect locked) ----------
$script:resizing = $false
$ui.grip.Add_MouseLeftButtonDown({
    $script:resizing = $true
    $p = $_.GetPosition($win)
    $script:offX = $win.Width - $p.X
    $script:offY = $win.Height - $p.Y
    $ui.grip.CaptureMouse() | Out-Null
    $_.Handled = $true
})
$ui.grip.Add_MouseMove({
    if (-not $script:resizing) { return }
    $p = $_.GetPosition($win)
    $nw = [Math]::Max(140.0, [Math]::Max($p.X + $script:offX, ($p.Y + $script:offY) * 2))
    $win.Width = $nw; $win.Height = $nw / 2
})
$ui.grip.Add_MouseLeftButtonUp({
    $script:resizing = $false
    $ui.grip.ReleaseMouseCapture()
    Save-Settings
})
$win.Add_MouseEnter({ $ui.grip.Opacity = 0.75 })
$win.Add_MouseLeave({ if (-not $script:resizing) { $ui.grip.Opacity = 0 } })

# ---------- right-click menu ----------
$menu = New-Object Windows.Controls.ContextMenu
function Add-Check($label, $key) {
    $m = New-Object Windows.Controls.MenuItem
    $m.Header = $label; $m.IsCheckable = $true; $m.IsChecked = [bool]$S[$key]; $m.Tag = $key
    $m.Add_Click({
        $k = $this.Tag; $S[$k] = $this.IsChecked
        if ($k -eq 'onTop') { $win.Topmost = $this.IsChecked }
        $script:lastKey = ''; Update-Display; Save-Settings
    })
    $menu.Items.Add($m) | Out-Null
}
Add-Check '24-hour time' 'h24'
Add-Check 'Show seconds' 'seconds'
Add-Check 'Show date' 'date'
Add-Check 'Always on top' 'onTop'
$menu.Items.Add((New-Object Windows.Controls.Separator)) | Out-Null
$themeItems = @()
foreach ($name in 'plum', 'rose', 'ocean', 'midnight') {
    $m = New-Object Windows.Controls.MenuItem
    $m.Header = (Get-Culture).TextInfo.ToTitleCase($name); $m.Tag = $name
    $m.IsCheckable = $true; $m.IsChecked = ($S.theme -eq $name)
    $m.Add_Click({
        $S.theme = $this.Tag
        foreach ($i in $themeItems) { $i.IsChecked = ($i.Tag -eq $S.theme) }
        Apply-Theme; Update-Display; Save-Settings
    })
    $themeItems += $m; $menu.Items.Add($m) | Out-Null
}
$menu.Items.Add((New-Object Windows.Controls.Separator)) | Out-Null
$quit = New-Object Windows.Controls.MenuItem; $quit.Header = 'Quit'
$quit.Add_Click({ Save-Settings; $win.Close() })
$menu.Items.Add($quit) | Out-Null
$win.ContextMenu = $menu

# ---------- animation + tick ----------
$t0 = Get-Date
$script:lavaT = 0.0
$timer = New-Object Windows.Threading.DispatcherTimer
$timer.Interval = [TimeSpan]::FromMilliseconds(50)
$timer.Add_Tick({
    try {
        $now = Get-Date
        $tt = ($now - $t0).TotalSeconds

        # alarm fires
        if ($TM.state -eq 'running' -and ($TM.end - $now).TotalSeconds -le 0) {
            $TM.state = 'ringing'; $TM.remaining = 0.0; $TM.ringAt = $now; $TM.chimes = 0; $TM.lastChime = [DateTime]::MinValue
            $S.mode = 'timer'; $script:lastKey = ''
        }
        $ringing = ($TM.state -eq 'ringing')
        if ($ringing -and $TM.chimes -lt 3 -and ($now - $TM.lastChime).TotalSeconds -ge 2.6) {
            Play-Chime; $TM.lastChime = $now; $TM.chimes++
        }

        # unicorn bob / shake, sparkle twinkle
        $uniT.Y = -3 * [Math]::Sin($tt * 2.1)
        $uniT.X = if ($ringing) { 3 * [Math]::Sin($tt * 35) } else { 0 }
        # timer progress for the themed looks. In clock mode ($allIn) the scene is shown fully built.
        $pr = 0.0; $allIn = $false
        if ($ringing) { $pr = 1.0 }
        elseif ($S.mode -ne 'timer') { $allIn = $true }
        elseif ($TM.total -gt 0) { $pr = [Math]::Min(1.0, [Math]::Max(0.0, 1 - (Get-Remaining) / $TM.total)) }

        if ($S.style -eq 'volcano') {
            $te = if ($ringing) { ($now - $TM.ringAt).TotalSeconds } else { 0.0 }
            $volcT.X = if ($ringing) { 1.8 * [Math]::Sin($tt * 40) } else { 0 }
            $fp = if ($allIn) { 1.0 } else { $pr }
            $ui.gFlow.Clip.Rect = New-Object Windows.Rect 0, 0, 100, (22 + 76 * $fp)
            $ui.crGlow.Opacity = [Math]::Min(1.0, 0.3 + 0.45 * $fp + 0.2 * [Math]::Sin($tt * 3))
            $ui.skyGrey.Opacity = if ($ringing) { 0.93 * [Math]::Min(1.0, $te / 1.2) } else { 0.0 }
            $ui.gBoom.Visibility = if ($ringing) { 'Visible' } else { 'Collapsed' }
            if ($ringing) {
                $ramp = [Math]::Min(1.0, $te / 0.3)
                $ui.plume.RenderTransform.ScaleY = $ramp * (0.8 + 0.2 * [Math]::Sin($te * 16))
                $ui.plume.RenderTransform.ScaleX = 0.9 + 0.1 * [Math]::Sin($te * 21)
                for ($j = 0; $j -lt 3; $j++) {
                    $p = ($te * 0.45 + $j * 0.34) % 1.0; $a = $ashes[$j]
                    $a.RenderTransform.Children[0].ScaleX = 0.6 + 1.3 * $p; $a.RenderTransform.Children[0].ScaleY = 0.6 + 1.3 * $p
                    $a.RenderTransform.Children[1].X = ($j - 1) * 14 * $p; $a.RenderTransform.Children[1].Y = -34 * $p
                    $a.Opacity = 0.8 * (1 - $p) * [Math]::Min(1.0, $te / 0.6)
                }
                for ($j = 0; $j -lt $rocks.Count; $j++) {
                    $r = $rocks[$j]; $fl = ($te + $j * 0.13) % 1.7
                    $x = 50 + $r.vx * $fl; $y = 24 + $r.vy * $fl + 75 * $fl * $fl
                    [Windows.Controls.Canvas]::SetLeft($r.el, $x - $r.el.Width / 2); [Windows.Controls.Canvas]::SetTop($r.el, $y - $r.el.Height / 2)
                    $r.el.Opacity = if ($y -gt 84) { 0.0 } else { 1.0 }
                }
            }
        }
        if ($S.style -eq 'ramen') {
            $bowlT.Y = -1.5 * [Math]::Sin($tt * 2.1)
            $bowlT.X = if ($ringing) { 3 * [Math]::Sin($tt * 35) } else { 0 }
            # toppings arrive as the timer runs: noodles 1/4, mushrooms 2/4, veggies 3/4, chopsticks at the end.
            $fade = { param($th) if ($allIn) { 1.0 } else { [Math]::Min(1.0, [Math]::Max(0.0, ($pr - $th) / 0.03)) } }
            $ui.gNoodle.Opacity = & $fade 0.25
            $ui.gMush.Opacity   = & $fade 0.5
            $ui.gVeg.Opacity    = & $fade 0.75
            $fc = if ($allIn) { 0.0 } else { [Math]::Min(1.0, [Math]::Max(0.0, ($pr - 0.97) / 0.03)) }
            $ui.gChop.Opacity = $fc
            $ui.gChop.RenderTransform.Y = -10 * (1 - $fc)
            $speed = if ($ringing) { 1.8 } else { 0.8 }
            for ($i = 0; $i -lt $bubbles.Count; $i++) {
                $ph = ($tt * $speed + $i * 0.23) % 1.0
                $sc = [Math]::Sin($ph * [Math]::PI)
                $bubbles[$i].RenderTransform.ScaleX = $sc; $bubbles[$i].RenderTransform.ScaleY = $sc
                $bubbles[$i].Opacity = 0.9 * (1 - $ph * $ph)
            }
        }
        for ($i = 0; $i -lt $sparks.Count; $i++) {
            $sparks[$i].Opacity = 0.25 + 0.75 * (0.5 + 0.5 * [Math]::Sin($tt * 2.6 + $i * 1.7))
        }

        # border pulses hot pink while ringing
        if ($ringing) {
            $k = 0.5 + 0.5 * [Math]::Sin($tt * 9); $hot = Color '#ff6fb5'; $b0 = $script:themeBorder
            $borderBrush.Color = [Windows.Media.Color]::FromRgb(
                [byte]($b0.R + ($hot.R - $b0.R) * $k), [byte]($b0.G + ($hot.G - $b0.G) * $k), [byte]($b0.B + ($hot.B - $b0.B) * $k))
        } elseif ($borderBrush.Color -ne $script:themeBorder) { $borderBrush.Color = $script:themeBorder }

        # progress bar: slowly fills with lava-lamp gold as the timer runs down (frozen when paused)
        $active = ($TM.state -eq 'running') -or $ringing -or ($TM.state -eq 'idle' -and $TM.remaining -gt 0)
        $ui.lava.Visibility = if ($active) { 'Visible' } else { 'Collapsed' }
        if ($active) {
            $progress = if ($ringing) { 1.0 } elseif ($TM.total -gt 0) { [Math]::Min(1.0, [Math]::Max(0.0, 1 - (Get-Remaining) / $TM.total)) } else { 0.0 }
            $fillW = 150 * $progress
            $lavaClip.Rect = New-Object Windows.Rect 0, 0, $fillW, 8
            if ($TM.state -eq 'running') { $script:lavaT += 0.05 } elseif ($ringing) { $script:lavaT += 0.14 }
            $lt = $script:lavaT
            $rm = ($S.style -ne 'unicorn')   # ramen / volcano: bar flows red or molten orange instead of gold
            $hb = switch ($S.style) { 'ramen' { 6 } 'volcano' { 20 } default { 46 } }; $hr = if ($rm) { 8 } else { 7 }
            for ($i = 0; $i -lt 4; $i++) { $lavaStops[$i].Color = Hsv ($hb + $hr * [Math]::Sin($lt * 0.5 + $i * 1.3)) ($(if ($rm) { 0.78 } else { 0.5 }) + 0.15 * [Math]::Sin($lt * 0.4 + $i)) $(if ($rm) { 0.92 } else { 1.0 }) }
            for ($j = 0; $j -lt 3; $j++) {
                [Windows.Controls.Canvas]::SetLeft($blobs[$j], $fillW * (0.5 + 0.42 * [Math]::Sin($lt * 0.55 + $j * 2.2)) - $blobs[$j].Width / 2)
                [Windows.Controls.Canvas]::SetTop($blobs[$j], 4 + 3 * [Math]::Sin($lt * 0.9 + $j * 1.4) - 7)
                $blobs[$j].Fill.Color = if ($rm) { Hsv ($hb + 2 + 10 * [Math]::Sin($lt * 0.35 + $j * 1.9)) (0.65 + 0.25 * ($j % 2)) 1.0 }
                                        else { Hsv (42 + 10 * [Math]::Sin($lt * 0.35 + $j * 1.9)) (0.35 + 0.4 * ($j % 2)) 1.0 }
            }
            $ui.lava.Opacity = if ($TM.state -eq 'idle') { 0.6 } else { 1.0 }
        }

        $ui.txPlay.Text = if ($TM.state -eq 'running') { [string][char]0x275A + [char]0x275A } else { [string][char]0x25B6 }
        Update-Display
    } catch {}
})
$timer.Start()

$win.Add_Closing({ Save-Settings })
$win.ShowDialog() | Out-Null
