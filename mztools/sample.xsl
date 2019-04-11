<!-- 
This stylesheet has been tested with Microsoft IE 5.0 
and MSXML30 SP1 in REPLACE MODE (use xmlinst.exe)
Search "Installing MSXML 3.0 for XSLT Support" in the MSDN Library
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Main Template
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="/">
   
      <html>

         <head>
            <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"></meta>
            <title><xsl:value-of select="'Documentation'" /></title>
            <style>
               h1                   { color: #000080; margin-left: 0 }
               h2                   { color: #000080; margin-left: 20 }
               h3                   { color: #000080; margin-left: 40 }
               h4                   { color: #000080; margin-left: 60 }
               h5                   { color: #000080; margin-left: 80 }
               h6                   { color: #000080; margin-left: 100 }
               .Header1Paragraph    { margin-left: 20 }
               .Header2Paragraph    { margin-left: 40 }
               .Header3Paragraph    { margin-left: 60 }
               .Header4Paragraph    { margin-left: 80 }
               .Header5Paragraph    { margin-left: 100 }
               .Header6Paragraph    { margin-left: 120 }
               a                    { text-decoration: none; color: #000080 }
               table                { border-collapse: collapse; margin-top: 10 }
               td                   { border: 1 solid #000000 }
               th                   { color: #FFFFFF; background-color: #000080 }
               .PropertyName        { font-weight: bold }
               .ListHeader          { font-weight: bold }
               body                 { font-size: x-small }
               tbody                { font-size: x-small }
            </style>
         </head>

         <body>
            Note: If you do not see data in the report of below, you need to install Microsoft XML Parser 3.0 Service 
            Pack 1 or higher installed in REPLACE MODE with the xmlinst.exe utility provided by Microsoft.
            See the MSDN Knowledge Base article Q278969: "INFO: How to Redistribute the Microsoft XML Parser"

            <br />

            <!-- This template applies to Project Group level documentation only -->
            <xsl:apply-templates select="ProjectGroup" />

            <!-- This template applies to Project level documentation only -->
            <xsl:apply-templates select="Project" />

            <!-- This template applies to File level documentation only -->
            <xsl:apply-templates select="File" />

         </body>

       </html>
   
   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for ProjectGroup
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="ProjectGroup">
      
      <h1>Project Group <xsl:value-of select="FileName"/></h1>

      <p class="Header1Paragraph">
      
         <!-- Build the projects table -->
         <xsl:apply-templates select="Projects" />

      </p>

      <!-- Build the documentation section for each project -->
      <xsl:for-each select="Projects/Project">

         <!-- Apply template for Project -->
         <xsl:apply-templates select="."/>

      </xsl:for-each>
   
   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Project
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="Project">

      <!-- Save the name of the project in a variable for later use -->
      <xsl:variable name="ProjectName"><xsl:value-of select="Name" /></xsl:variable>

      <!-- Build the header -->
      <h2>

         <!-- Build a bookmark -->
         <a>
            <xsl:attribute name="name">
               <xsl:call-template name="ProjectBookmarkName">
                  <xsl:with-param name="ProjectName"><xsl:value-of select="Name" /></xsl:with-param>
               </xsl:call-template>
            </xsl:attribute>
         </a>

         Project <xsl:value-of select="Name"/>

      </h2>
   
      <p class="Header2Paragraph">

         <!-- Build some properties of the project-->
         <span class='PropertyName'>Filename: </span><xsl:value-of select="FileName"/><br/>
         <span class='PropertyName'>Type: </span><xsl:value-of select="Type"/><br/>
         <span class='PropertyName'>BuildFilename: </span><xsl:value-of select="BuildFileName"/><br/>
         <br/>

         <!-- Build the references table -->
         <xsl:apply-templates select="References" />

         <br/>
      
         <!-- Build the files table -->
         <xsl:apply-templates select="Files" >
            <xsl:with-param name="ProjectName"><xsl:value-of select="Name" /></xsl:with-param>
         </xsl:apply-templates>

         <br/>
      
         <!-- Build the documentation section for each file -->
         <xsl:for-each select="Files/File">
            <xsl:sort select="Type"/>
            <xsl:sort select="Name"/>
            <!-- Apply template for File -->
            <xsl:apply-templates select=".">
               <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
            </xsl:apply-templates>
     
         </xsl:for-each>

      </p>
   
      <br/>
      <hr/>
      <br/>
   
   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for File
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="File">
      <xsl:param name="ProjectName"></xsl:param>   

      <!-- Save the name of the file in a variable for later use -->
      <xsl:variable name="FileName"><xsl:value-of select="Name" /></xsl:variable>

      <!-- Check if it is a true VB file -->
      <xsl:if test="Type != 'RelatedDocument' and Type != 'ResFile' ">
   
         <h3>

            <!-- Build a bookmark name -->
            <a>
               <xsl:attribute name="name">
                  <xsl:call-template name="FileBookmarkName">
                     <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
                     <xsl:with-param name="FileName"><xsl:value-of select="Name" /></xsl:with-param>
                  </xsl:call-template>
               </xsl:attribute>
            </a>

            <!-- Add the translated file type -->
            <xsl:apply-templates select="Type" />

            <!-- Add a space character as separator -->
            <xsl:text> </xsl:text>

            <!-- Add the logical name and the file name -->
            <xsl:value-of select="Name"/>
            <xsl:if test="FileName != '' ">
               <xsl:text> (</xsl:text>
               <xsl:value-of select="FileName"/>
               <xsl:text>)</xsl:text>
            </xsl:if>

         </h3>

         <p class="Header3Paragraph">

            <span class='PropertyName'>Comment: </span>

            <xsl:choose>
               <xsl:when test="count(CodeModule/CommentLines/CommentLine) = 0"> None<br/><br/></xsl:when>
               <xsl:otherwise>
                  <br/>
                  <br/>
                  <xsl:for-each select="CodeModule/CommentLines/CommentLine">
                     <xsl:value-of select="."/>
                     <br/>
                  </xsl:for-each>
                  <br/>
               </xsl:otherwise>
            </xsl:choose>

            <span class='PropertyName'>Count of declaration lines: </span><xsl:value-of select="CodeModule/CountOfDeclarationLines"/><br/>
            <span class='PropertyName'>Count of lines: </span><xsl:value-of select="CodeModule/CountOfLines"/><br/>
      
            <!-- Include the list of properties -->
            <xsl:apply-templates select="Properties" />

            <!-- If it is a file with visual interface, we include the list of controls -->
            <xsl:if test="Type = 'VBForm' or Type = 'VBMDIForm' or Type = 'UserControl' or 
                             Type = 'DocObject' or Type = 'PropPage' or Type = 'MSForm' ">

               <xsl:apply-templates select="Controls" />
         
            </xsl:if>

            <!-- Build the Interfaces table -->
            <xsl:apply-templates select="CodeModule/Interfaces" />

            <!-- Build the Events table -->
            <xsl:apply-templates select="CodeModule/Events" />

            <!-- Build the Procedures table -->
            <xsl:apply-templates select="CodeModule/Procedures">
               <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
               <xsl:with-param name="FileName"><xsl:value-of select="Name" /></xsl:with-param>
            </xsl:apply-templates>

            <br/>

            <!-- Build the documentation section for each procedure -->
            <xsl:for-each select="CodeModule/Procedures/Procedure">
               <xsl:sort select="Scope" />
               <xsl:sort select="Name" />

               <!-- Apply template for Procedure -->
               <xsl:apply-templates select=".">
                  <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
                  <xsl:with-param name="FileName"><xsl:value-of select="$FileName" /></xsl:with-param>
               </xsl:apply-templates>
             
            </xsl:for-each>

         </p>
      </xsl:if>
   
   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Procedure
   ////////////////////////////////////////////////////////////////////////
   -->

   <xsl:template match="Procedure">
      <xsl:param name="ProjectName"></xsl:param>   
      <xsl:param name="FileName"></xsl:param>   

      <!-- Build the header -->
      <h4>

         <!-- Build a bookmark -->
         <a>
            <xsl:attribute name="name">
               <xsl:call-template name="ProcedureBookmarkName">
                  <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
                  <xsl:with-param name="FileName"><xsl:value-of select="$FileName" /></xsl:with-param>
                  <xsl:with-param name="ProcedureName"><xsl:value-of select="Name" /></xsl:with-param>
                  <xsl:with-param name="ProcedureType"><xsl:value-of select="Type" /></xsl:with-param>
               </xsl:call-template>
            </xsl:attribute>
         </a>

         Procedure <xsl:value-of select="Name"/>

      </h4>
   
      <p class="Header4Paragraph">

         <!-- Build some properties of the procedure-->
         <span class='PropertyName'>Type: </span><xsl:apply-templates select="Type" />
         <br/>
         <span class='PropertyName'>Scope: </span><xsl:value-of select="Scope"/>
         <br/>
         <span class='PropertyName'>Count of lines: </span><xsl:value-of select="CountOfLines"/>
         <br/>
         <br/>
         <span class='PropertyName'>Declaration: </span>
         <br/>
         <br/>
         <xsl:value-of select="Declaration"/>
         <br/>
         <br/>
         <xsl:apply-templates select="Parameters" />
         
         <br/>
         <br/>
         <span class='PropertyName'>Comment: </span>

         <xsl:choose>
            <xsl:when test="count(CommentLines/CommentLine) = 0"> None<br/><br/></xsl:when>
            <xsl:otherwise>
               <br/>
               <br/>
               <xsl:for-each select="CommentLines/CommentLine">
                  <xsl:value-of select="."/>
                  <br/>
               </xsl:for-each>
            </xsl:otherwise>
         </xsl:choose>

         <br/>

      </p>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Project list
   ////////////////////////////////////////////////////////////////////////
   -->

   <xsl:template match="Projects">

      <span class='ListHeader'>Projects:</span>

      <table border="0" width="90%">

      <tr>
         <th>Name</th>
         <th>Filename</th>
         <th>Type</th>
      </tr>

      <xsl:for-each select="Project">

         <xsl:sort select="Type"/>
         <xsl:sort select="Name"/>
       
         <tr>
            <td>
               <!-- We add a hyperlink to a bookmark with information about of the project -->
               <a>
                  <xsl:attribute name="href">
                     <xsl:text>#</xsl:text>
                     <xsl:call-template name="ProjectBookmarkName">
                        <xsl:with-param name="ProjectName"><xsl:value-of select="Name" /></xsl:with-param>
                     </xsl:call-template>
                  </xsl:attribute>
                  <xsl:value-of select="Name" />
               </a>
            </td>
            <td><xsl:value-of select="FileName"/></td>
            <td><xsl:value-of select="Type"/></td>
         </tr>

       </xsl:for-each>

      </table>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Files list
   ////////////////////////////////////////////////////////////////////////
   -->

   <xsl:template match="Files">

      <xsl:param name="ProjectName"></xsl:param>   

      <span class='ListHeader'>Files:</span>

      <table border="0" width="90%">

         <tr>
            <th>Name</th>
            <th>Filename</th>
            <th>Type</th>
         </tr>

         <xsl:for-each select="File">
            <xsl:sort select="Type" />
            <xsl:sort select="Name" />
            <tr>
               <td>
                  <!-- We add a hyperlink to a bookmark with information about of the file -->
                  <a>
                     <xsl:attribute name="href">
                        <xsl:text>#</xsl:text>
                        <xsl:call-template name="FileBookmarkName">
                           <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
                           <xsl:with-param name="FileName"><xsl:value-of select="Name" /></xsl:with-param>
                        </xsl:call-template>
                     </xsl:attribute>
                     <xsl:value-of select="Name" />
                  </a>
               </td>
               <td><xsl:value-of select="FileName"/></td>
               <td>
                  <xsl:apply-templates select="Type"/>
               </td>
            </tr>
         </xsl:for-each>

      </table>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for References list
   ////////////////////////////////////////////////////////////////////////
   -->

   <xsl:template match="References">

      <span class='ListHeader'>References:</span>

      <table border="0" width="90%">

      <tr>
         <th>Name</th>
         <th>Filename</th>
         <th>Description</th>
         <th>Type</th>
         <th>Version</th>
      </tr>
          
      <xsl:for-each select="Reference">

         <tr>
            <td><xsl:value-of select="Name"/></td>
            <td><xsl:value-of select="FileName"/></td>
            <td><xsl:value-of select="Description"/></td>
            <td><xsl:value-of select="Type"/></td>
            <td><xsl:value-of select="Major"/>.<xsl:value-of select="Minor"/></td>
         </tr>

      </xsl:for-each>

      </table>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Controls list
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="Controls">

      <br/><span class='ListHeader'>Controls:</span>
     
      <table border="0" width="90%">
         
         <tr>
            <th>Name</th>
            <th>ProgID</th>
            <th>Caption</th>
         </tr>
            
         <xsl:for-each select="Control">
            <xsl:sort select="Name"/>
            <tr>
               <td><xsl:value-of select="Name"/></td>
               <td><xsl:value-of select="ProgId"/></td>
                  <td>
                     <xsl:choose>
                        <xsl:when test="Properties/Property[Name='Caption']/Value">
                           <xsl:text>"</xsl:text>
                           <xsl:value-of select="Properties/Property[Name='Caption']/Value" />
                           <xsl:text>"</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>n/a</xsl:otherwise>
                     </xsl:choose>
                  </td>
               </tr>
         </xsl:for-each>

      </table>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Events list
   ////////////////////////////////////////////////////////////////////////
   -->

   <xsl:template match="Events">

      <!-- If there is at least one element -->
      <xsl:if test="Event != '' ">

         <br/><span class='ListHeader'>Events:</span>

         <table border="0" width="90%">

         <tr>
            <th>Name</th>
            <th>Declaration</th>
         </tr>

         <xsl:for-each select="Event">
            <tr>
               <td><xsl:value-of select="Name"/></td>
               <td><xsl:value-of select="Declaration"/></td>
            </tr>
         </xsl:for-each>

         </table>

      </xsl:if>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Interfaces list
   ////////////////////////////////////////////////////////////////////////
   -->

   <xsl:template match="Interfaces">

      <!-- If there is at least one element -->
      <xsl:if test="Interface != '' ">
        
         <br/><span class='ListHeader'>Implemented Interfaces:</span>

         <table border="0" width="90%">

         <tr>
            <th>Name</th>
         </tr>

         <xsl:for-each select="Interface">
            <tr>
               <td><xsl:value-of select="."/></td>
            </tr>
         </xsl:for-each>

         </table>

      </xsl:if>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Procedures list
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="Procedures">
      <xsl:param name="ProjectName"></xsl:param>   
      <xsl:param name="FileName"></xsl:param>   
        
      <br/><span class='ListHeader'>Procedures:</span>

      <!-- If there is at least one element -->
      <xsl:choose>

         <xsl:when test="count(Procedure) = 0"> None</xsl:when>

         <xsl:otherwise>

            <table border="0" width="90%">

               <tr>
                  <th>Name</th>
                  <th>Scope</th>
                  <th>Type</th>
               </tr>

               <xsl:for-each select="Procedure">
                  <xsl:sort select="Scope" />
                  <xsl:sort select="Name" />
                  <tr>
                     <td>
                        <!-- We add a hyperlink to a bookmark with information about of the procedure -->
                        <a>
                           <xsl:attribute name="href">
                              <xsl:text>#</xsl:text>
                              <xsl:call-template name="ProcedureBookmarkName">
                                 <xsl:with-param name="ProjectName"><xsl:value-of select="$ProjectName" /></xsl:with-param>
                                 <xsl:with-param name="FileName"><xsl:value-of select="$FileName" /></xsl:with-param>
                                 <xsl:with-param name="ProcedureName"><xsl:value-of select="Name" /></xsl:with-param>
                                 <xsl:with-param name="ProcedureType"><xsl:value-of select="Type" /></xsl:with-param>
                              </xsl:call-template>
                           </xsl:attribute>
                           <xsl:value-of select="Name" />
                        </a>
                     </td>
                     <td><xsl:value-of select="Scope"/></td>
                     <td><xsl:apply-templates select="Type" /></td>
                  </tr>
               </xsl:for-each>

            </table>

         </xsl:otherwise>

      </xsl:choose>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Properties list
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="Properties">

      <br/><span class='ListHeader'>Properties:</span>
        
      <table border="0" width="90%">
            
         <tr>
            <th>Name</th>
            <th>Value</th>
         </tr>
          
         <xsl:for-each select="Property">
            <xsl:sort select="Name"/>
            <tr>
               <td><xsl:value-of select="Name"/></td>
               <td><xsl:value-of select="Value"/></td>
            </tr>
         </xsl:for-each>

      </table>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Parameters list
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="Parameters">

      <span class='ListHeader'>Parameters:</span>

      <!-- If there is at least one element -->
      <xsl:choose>

         <xsl:when test="count(Parameter) = 0"> None</xsl:when>

         <xsl:otherwise>

            <table border="0" width="90%">
                  
               <tr>
                  <th>Name</th>
                  <th>Type</th>
                  <th>ByVal/ByRef</th>
                  <th>Optional (Default Value)</th>
               </tr>
                
               <xsl:for-each select="Parameter">
                  <tr>
                     <td><xsl:value-of select="Name"/></td>
                     <td><xsl:value-of select="Type"/></td>
                     <td>
                        <xsl:choose>
                           <xsl:when test="IsByVal='True'">ByVal</xsl:when>
                           <xsl:when test="IsByVal='False'">ByRef</xsl:when>
                        </xsl:choose>
                     </td>
                     <td>
                        <xsl:choose>
                           <xsl:when test="IsOptional='True'">Yes (<xsl:value-of select="DefaultValue" />)</xsl:when>
                           <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                     </td>
                  </tr>
               </xsl:for-each>

            </table>

         </xsl:otherwise>

      </xsl:choose>
      
   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for FileType
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="File/Type">

      <xsl:choose>

         <!-- Here you can localize the type to your language -->

         <xsl:when test=". = 'StdModule' ">Module</xsl:when>
         <xsl:when test=". = 'ClassModule' ">Class</xsl:when>
         <xsl:when test=". = 'MSForm' ">MSForm</xsl:when>
         <xsl:when test=". = 'ResFile' ">Resource File</xsl:when>
         <xsl:when test=". = 'VBForm' ">Form</xsl:when>
         <xsl:when test=". = 'VBMDIForm' ">MDI Form</xsl:when>
         <xsl:when test=". = 'PropPage' ">Property Page</xsl:when>
         <xsl:when test=". = 'UserControl' ">User Control</xsl:when>
         <xsl:when test=". = 'DocObject' ">User Document</xsl:when>
         <xsl:when test=". = 'RelatedDocument' ">Related Document</xsl:when>
         <xsl:when test=". = 'ActiveXDesigner' ">ActiveX Designer</xsl:when>
         <xsl:when test=". = 'VBADocument' ">VBA Document</xsl:when>

      </xsl:choose>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for ProcedureType
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template match="Procedure/Type">

      <xsl:choose>

         <!-- Here you can localize the type to your language -->

         <xsl:when test=". = 'Subroutine' ">Subroutine</xsl:when>
         <xsl:when test=". = 'Function' ">Function</xsl:when>
         <xsl:when test=". = 'PropertyGet' ">Property Get</xsl:when>
         <xsl:when test=". = 'PropertyLet' ">Property Let</xsl:when>
         <xsl:when test=". = 'PropertySet' ">Property Set</xsl:when>

      </xsl:choose>

   </xsl:template>
   
   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Project Bookmark
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template name="ProjectBookmarkName">
      <xsl:param name="ProjectName"></xsl:param>   

      <!-- Build a bookmark name with the pattern "ProjectName_Bookmark" -->
      <xsl:value-of select="$ProjectName" />
      <xsl:text>_Bookmark</xsl:text>

   </xsl:template>
 
   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for File Bookmark
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template name="FileBookmarkName">

      <xsl:param name="ProjectName"></xsl:param>   
      <xsl:param name="FileName"></xsl:param>   

      <!-- Build a bookmark name with the pattern "ProjectName_FileName_Bookmark" -->
      <xsl:value-of select="$ProjectName" />
      <xsl:text>_</xsl:text>
      <xsl:value-of select="$FileName"/>
      <xsl:text>_Bookmark</xsl:text>

   </xsl:template>

   <!--
   ////////////////////////////////////////////////////////////////////////
                               Template for Procudure Bookmark
   ////////////////////////////////////////////////////////////////////////
   -->
   
   <xsl:template name="ProcedureBookmarkName">

      <xsl:param name="ProjectName"></xsl:param>   
      <xsl:param name="FileName"></xsl:param>   
      <xsl:param name="ProcedureName"></xsl:param>   
      <xsl:param name="ProcedureType"></xsl:param>   

      <!-- Build a bookmark name with the pattern "ProjectName_FileName_ProcedureName_ProcedureType_Bookmark" -->
      <xsl:value-of select="$ProjectName" />
      <xsl:text>_</xsl:text>
      <xsl:value-of select="$FileName"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="$ProcedureName"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="$ProcedureType"/>
      <xsl:text>_Bookmark</xsl:text>

   </xsl:template>

</xsl:stylesheet>


