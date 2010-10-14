Lightweight Ant script extensions generator for Robotlegs implementation of MVCs by @EladElrom

Features:

1. Robotlegs Folder structure.
2. Robotlegs libraries and source code
5. Automatic ThunderBolt integration to each user-gesture.
6. Creating VO.
7. Add event command user gesture
8. Add Startup command
9. Add main class and Context class
10. Create Model class
11. Create Service class
12. Create view and mediator combo
13. Move libraries and source code to project lib
14. Passive Presentation Model implementation
15. AS Signals integration

In case you are running into errors:
You need to ensure you copy the following plugins:
Copy to [eclipse-directory]/plugins

    * BSF - http://jakarta.apache.org/site/downloads/downloads_bsf.cgi
    * Rhino - http://www.mozilla.org/rhino/download.html

After you add the jars you will need to do the following step:

Flash Builder>Preferences>Ant>Runtime>Classpath,
�Ant Home Entries� > �Add External JARs� - point to jar files for:

    * bsf
    * rhino
    * org.apache.commons.logging._[ver].jar (which should already be in your Eclipse plugins directory)

Otherwise you will get the errors when trying to run an Ant task, such as the one below:
/Users/501706853/Documents/workspace/tools/�/build.xml:245: Unable to load a script engine manager (org.apache.bsf.BSFManager or javax.script.ScriptEngineManage
