<h1><a id="ALOHOMORA_0"></a>ALOHOMORA</h1>
<p>Alohomora. Find information about different Harry Potter Characters and Houses, explore spells, create spellbooks and get sorted into Houses - all through a simple command line interface.</p>
<h1><a id="Features_4"></a>Features</h1>
<ul>
<li>Witty comments from Professor Flitwick</li>
<li>search by character through list</li>
<li>outputs every character in a table</li>
<li>option to randomly displays character</li>
<li>user can view spells</li>
<li>user can add spells to their spellbook</li>
<li>user can get assisgned to a house</li>
<li>user can view others that belong to the same house</li>
<li>user can access information on their house</li>
<li>Harry Potter Theme music in the background.</li>
</ul>
<h3><a id="Tech_16"></a>Tech</h3>
<p>Alohomora uses a number of gems, and these are required for it to work properly:</p>
<ul>
<li>gem “sinatra-activerecord”</li>
<li>gem “sqlite3”</li>
<li>gem “pry”</li>
<li>gem “require_all”</li>
<li>gem “rest-client”</li>
<li>gem “json”</li>
<li>gem “rake”</li>
<li>gem ‘tty-prompt’</li>
<li>gem ‘terminal-table’</li>
<li>gem ‘tty-font’</li>
<li>gem ‘progress_bar’</li>
<li>gem ‘pastel’</li>
</ul>
<p>And of course Alohomora itself is open source with a <a href="https://github.com/sirloinus/module-one-final-project-guidelines-london-web-091718r">public repository</a> on GitHub.</p>
<h3><a id="Installation_35"></a>Installation</h3>
<p>Getting started with Alohomora is relatively simple. Clone the <a href="https://github.com/sirloinus/module-one-final-project-guidelines-london-web-091718r">repository</a> in your desired location.</p>
<p>Once inside the project directory, the following steps need to be executed in the terminal.</p>
<p>Alohomora requires the gem files in ‘Tech’ to be installed. This can be done by running</p>
<pre><code class="language-sh">bundle install
</code></pre>
<p>After this you need to get the database set up, this is another one step install.</p>
<pre><code class="language-sh">rake  db:migrate
</code></pre>
<h3><a id="NOTE_50"></a>NOTE</h3>
<p>When searching for a character by name, the name needs to match the name from the names table exactly.</p>
