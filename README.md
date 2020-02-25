# Wingpanel Ayatana-Compatibility Indicator (Community Version)
<h1>Description:</h1>
Keep compatibility with ubuntu/unity indicators on Elementary OS wingpanel.
If you want to install applications with indicators like weather forecast, redshift... this plug-in 
let these indicators appear in your panel. 

<p align="center"><img src="screenshot.png"/> </p>

<h1>Installation</h1>
Download the last release (zip) and extract files<br/>

<h2>Dependencies</h2>

You'll need the following dependencies to build :

<pre>sudo apt-get install libglib2.0-dev libgranite-dev libindicator3-dev 
sudo apt-get install libwingpanel-2.0-dev valac gcc meson </pre/>

<h2>Build with meson</h2>

Open a Terminal in the extracted folder, build your application with meson and install it with ninja:<br/>

<pre>meson build --prefix=/usr
cd build
ninja
sudo ninja install
</pre>

<h1>uninstall</h1>
Open a terminal in the build folder.
<pre>sudo ninja uninstall
killall wingpanel
</pre>
