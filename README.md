# Wingpanel Ayatana-Compatibility Indicator (Community Version)
<h1>Description:</h1>
Keep compatibility with ubuntu/unity indicators on Elementary OS wingpanel.
If you want to install applications with indicators like weather forecast, redshift... this plug-in 
let these indicators appear in your panel. 

<p align="center"><img src="screenshot.png"/> </p>

<h1>Installation</h1>
Download the last release (zip) et extract files<br/>

<h2>Depedencies</h2>

You'll need the following dependencies to build :

<pre>sudo apt-get install gobject-introspection libglib2.0-dev libgranite-dev libindicator3-dev 
sudo apt-get install libwingpanel-2.0-dev valac gcc gtk+-3.0 meson </pre/>

<h2>Build with meson</h2>

Open a Terminal in the extracted folder, build your application with meson and install it with ninja:<br/>

<pre>meson build --prefix=/usr
cd build
ninja
sudo ninja install
</pre>

