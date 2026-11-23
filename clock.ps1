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

      <!-- mode switch -->
      <Border Name="pill" Canvas.Left="206" Canvas.Top="11" Width="84" Height="20" CornerRadius="10" Background="#40000000">
        <Grid>
          <Grid.ColumnDefinitions><ColumnDefinition/><ColumnDefinition/></Grid.ColumnDefinitions>
          <Border Name="segClock" Grid.Column="0" CornerRadius="9" Margin="2" Background="Transparent" Cursor="Hand">
            <TextBlock Name="txClock" Text="clock" FontFamily="Segoe UI" FontWeight="SemiBold" FontSize="10.5" HorizontalAlignment="Center" VerticalAlignment="Center"/>
          </Border>
          <Border Name="segTimer" Grid.Column="1" CornerRadius="9" Margin="2" Background="Transparent" Cursor="Hand">
            <TextBlock Name="txTimer" Text="timer" FontFamily="Segoe UI" FontWeight="SemiBold" FontSize="10.5" HorizontalAlignment="Center" VerticalAlignment="Center"/>
          </Border>
        </Grid>
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
$S = @{ h24 = $false; seconds = $false; date = $true; onTop = $true; theme = 'plum'; mode = 'clock'; width = 320.0; left = $null; top = $null }
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
}
if (-not $themes.ContainsKey([string]$S.theme)) { $S.theme = 'plum' }
if ($S.mode -ne 'timer') { $S.mode = 'clock' }

# ---------- window ----------
$win = [Windows.Markup.XamlReader]::Parse($xaml)
$ui = @{}
foreach ($n in 'card','tbTime','tbDate','grip','pill','segClock','segTimer','txClock','txTimer','bM1','bP1','bP5','bPlay','bReset','txPlay',
               'lava','lavaCanvas','tbEdit','blob0','blob1','blob2','sp1','sp2','sp3','sp4','uni') { $ui[$n] = $win.FindName($n) }
$uniT = $ui.uni.RenderTransform
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
    $t = $themes[[string]$S.theme]
    $on = Brush $t.text; $off = Brush $t.sub
    $isTimer = ($S.mode -eq 'timer')
    $ui.segClock.Background = if ($isTimer) { [Windows.Media.Brushes]::Transparent } else { Brush '#55FFFFFF' }
    $ui.segTimer.Background = if ($isTimer) { Brush '#55FFFFFF' } else { [Windows.Media.Brushes]::Transparent }
    $ui.txClock.Foreground = if ($isTimer) { $off } else { $on }
    $ui.txTimer.Foreground = if ($isTimer) { $on } else { $off }
}
function Apply-Theme {
    $t = $themes[[string]$S.theme]
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
    $b.Add_MouseEnter({ $this.Background = Brush '#66FFFFFF' })
    $b.Add_MouseLeave({ $this.Background = Brush '#33FFFFFF' })
}
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
            for ($i = 0; $i -lt 4; $i++) { $lavaStops[$i].Color = Hsv (46 + 7 * [Math]::Sin($lt * 0.5 + $i * 1.3)) (0.5 + 0.15 * [Math]::Sin($lt * 0.4 + $i)) 1.0 }
            for ($j = 0; $j -lt 3; $j++) {
                [Windows.Controls.Canvas]::SetLeft($blobs[$j], $fillW * (0.5 + 0.42 * [Math]::Sin($lt * 0.55 + $j * 2.2)) - $blobs[$j].Width / 2)
                [Windows.Controls.Canvas]::SetTop($blobs[$j], 4 + 3 * [Math]::Sin($lt * 0.9 + $j * 1.4) - 7)
                $blobs[$j].Fill.Color = Hsv (42 + 10 * [Math]::Sin($lt * 0.35 + $j * 1.9)) (0.35 + 0.4 * ($j % 2)) 1.0
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
