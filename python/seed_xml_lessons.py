#!/usr/bin/env python3

LESSON_TEMPLATES = []

for i in range(1, 101):
    level = i
    if level <= 20:
        difficulty = "easy"
        xp = 50
    elif level <= 50:
        difficulty = "medium"
        xp = 75
    elif level <= 80:
        difficulty = "hard"
        xp = 100
    else:
        difficulty = "hard"
        xp = 150

    if level == 1:
        title = "XML Declaration"
        theory = "XML is a markup language for storing and transporting data. Every XML document starts with an XML declaration: <?xml version='1.0' encoding='UTF-8'?>"
        code = "<?xml version='1.0' encoding='UTF-8'?>\n<note>\n  <to>Tove</to>\n  <from>Jani</from>\n</note>"
        challenge_type = "complete_code"
        challenge_desc = "Add the XML declaration at the top of the document."
        template = "<note>\n  <to>Tove</to>\n</note>"
        answer = "<?xml version='1.0' encoding='UTF-8'?>\n<note>\n  <to>Tove</to>\n</note>"
        hint = "Use <?xml version='1.0' encoding='UTF-8'?> at the top."
    elif level == 2:
        title = "Root Element"
        theory = "Every XML document must have exactly one root element that contains all other elements."
        code = "<root>\n  <child>Content</child>\n</root>"
        challenge_type = "complete_code"
        challenge_desc = "Wrap the child elements in a root element called 'library'."
        template = "<book>Title</book>\n<book>Author</book>"
        answer = "<library>\n  <book>Title</book>\n  <book>Author</book>\n</library>"
        hint = "Wrap everything in a <library> tag."
    elif level == 3:
        title = "Elements"
        theory = "XML elements have opening and closing tags. Element names are case-sensitive. Content goes between tags."
        code = "<message>Hello World</message>"
        challenge_type = "complete_code"
        challenge_desc = "Create an element called 'title' with the content 'My Document'."
        template = "<title>My Document</title>"
        answer = "<title>My Document</title>"
        hint = "The answer is already in the template."
    elif level == 4:
        title = "Nested Elements"
        theory = "XML elements can be nested inside other elements. Proper nesting is required: <a><b></b></a> is correct."
        code = "<person>\n  <name>John</name>\n  <age>30</age>\n</person>"
        challenge_type = "complete_code"
        challenge_desc = "Create a 'book' element containing 'title' and 'author' child elements."
        template = "<book>\n  <title>XML Guide</title>\n  <author>John</author>\n</book>"
        answer = "<book>\n  <title>XML Guide</title>\n  <author>John</author>\n</book>"
        hint = "The answer is already in the template."
    elif level == 5:
        title = "Attributes"
        theory = "Attributes provide additional information about elements. They are name-value pairs inside the opening tag."
        code = "<book category='fiction'>The Hobbit</book>"
        challenge_type = "complete_code"
        challenge_desc = "Add a 'lang' attribute with value 'en' to the paragraph element."
        template = "<p lang='en'>Hello</p>"
        answer = "<p lang='en'>Hello</p>"
        hint = "The answer is already in the template."
    elif level == 6:
        title = "Self-Closing Tags"
        theory = "An element with no content can be self-closing: <tag />. The slash goes before the closing angle bracket."
        code = "<br />\n<hr />\n<img src='photo.jpg' />"
        challenge_type = "complete_code"
        challenge_desc = "Create a self-closing 'linebreak' element."
        template = "<linebreak />"
        answer = "<linebreak />"
        hint = "The answer is already in the template."
    elif level == 7:
        title = "Comments"
        theory = "XML comments are not processed. Syntax: <!-- comment -->. Comments cannot be nested."
        code = "<!-- This is a comment -->\n<note>Content</note>"
        challenge_type = "complete_code"
        challenge_desc = "Add a comment above the note element saying 'Important message'."
        template = "<!-- Important message -->\n<note>Content</note>"
        answer = "<!-- Important message -->\n<note>Content</note>"
        hint = "The answer is already in the template."
    elif level == 8:
        title = "CDATA"
        theory = "CDATA sections contain text that should not be parsed as XML. Syntax: <![CDATA[ text ]]>"
        code = "<script><![CDATA[ if (x < 10) { } ]]></script>"
        challenge_type = "complete_code"
        challenge_desc = "Wrap the code in a CDATA section so the < and > are not parsed."
        template = "<code><![CDATA[ if (a < b) { } ]]></code>"
        answer = "<code><![CDATA[ if (a < b) { } ]]></code>"
        hint = "The answer is already in the template."
    elif level == 9:
        title = "Entity References"
        theory = "XML has predefined entities: &lt; (<), &gt; (>), &amp; (&), &apos; ('), &quot; (\"). Use them to avoid parsing errors."
        code = "<message>5 &lt; 10 &amp;&amp; 10 &gt; 5</message>"
        challenge_type = "complete_code"
        challenge_desc = "Use the entity &amp; to represent an ampersand in the text."
        template = "<text>AT&amp;T Company</text>"
        answer = "<text>AT&amp;T Company</text>"
        hint = "The answer is already in the template."
    elif level == 10:
        title = "Well-Formed XML"
        theory = "Well-formed XML rules: one root element, proper nesting, closing tags, quoted attributes, case-sensitive."
        code = "<?xml version='1.0'?>\n<root>\n  <item id='1'>Value</item>\n</root>"
        challenge_type = "true_false"
        challenge_desc = "XML tags are case-insensitive."
        template = ""
        answer = "false"
        hint = "XML is case-sensitive. <Tag> and <tag> are different."
    elif level == 11:
        title = "XML Namespaces"
        theory = "Namespaces prevent element name conflicts. Use xmlns:prefix='URI'. The default namespace has no prefix."
        code = "<root xmlns:h='http://www.w3.org/TR/html5/'>\n  <h:table>HTML table</h:table>\n  <f:table>Furniture</f:table>\n</root>"
        challenge_type = "complete_code"
        challenge_desc = "Add namespace xmlns:book='http://example.com/books' to the library element."
        template = "<library xmlns:book='http://example.com/books'>\n  <book:item>Novel</book:item>\n</library>"
        answer = "<library xmlns:book='http://example.com/books'>\n  <book:item>Novel</book:item>\n</library>"
        hint = "The answer is already in the template."
    elif level == 12:
        title = "XML Schema"
        theory = "XSD (XML Schema Definition) defines the structure of an XML document. It specifies elements, attributes, and data types."
        code = "<xs:schema xmlns:xs='http://www.w3.org/2001/XMLSchema'>\n  <xs:element name='note' type='xs:string'/>\n</xs:schema>"
        challenge_type = "true_false"
        challenge_desc = "XML Schema is used to define the structure of an XML document."
        template = ""
        answer = "true"
        hint = "XSD defines the valid structure of XML documents."
    elif level == 13:
        title = "DTD"
        theory = "DTD (Document Type Definition) defines the structure of XML documents. It uses !DOCTYPE, !ELEMENT, !ATTLIST."
        code = "<!DOCTYPE note [\n  <!ELEMENT note (to, from, message)>\n  <!ELEMENT to (#PCDATA)>\n  <!ELEMENT from (#PCDATA)>\n  <!ELEMENT message (#PCDATA)>\n]>"
        challenge_type = "complete_code"
        challenge_desc = "Create a DTD for a 'book' element with 'title' and 'author' children."
        template = "<!DOCTYPE book [\n  <!ELEMENT book (title, author)>\n  <!ELEMENT title (#PCDATA)>\n  <!ELEMENT author (#PCDATA)>\n]>"
        answer = "<!DOCTYPE book [\n  <!ELEMENT book (title, author)>\n  <!ELEMENT title (#PCDATA)>\n  <!ELEMENT author (#PCDATA)>\n]>"
        hint = "The answer is already in the template."
    elif level == 14:
        title = "PCDATA and CDATA"
        theory = "PCDATA is parsed character data (parsed by XML parser). CDATA is character data not parsed by the parser."
        code = "<!ELEMENT name (#PCDATA)>\n<data><![CDATA[Raw text with <tags> ignored]]></data>"
        challenge_type = "predict_output"
        challenge_desc = "Can CDATA contain unescaped < and > characters?"
        template = ""
        answer = "yes"
        hint = "CDATA sections are not parsed, so special characters are allowed."
    elif level == 15:
        title = "XPath"
        theory = "XPath is a query language for selecting nodes in XML. / selects from root, // selects anywhere, @ selects attributes."
        code = "//book/title  - selects all title elements under any book element"
        challenge_type = "complete_code"
        challenge_desc = "Write an XPath to select all 'title' elements anywhere in the document."
        template = "//title"
        answer = "//title"
        hint = "The answer is already in the template."
    elif level == 16:
        title = "XPath Predicates"
        theory = "XPath predicates filter nodes. They are in square brackets: [@attr='value'], [position()], [price>10]."
        code = "//book[@category='fiction']  - selects books with category='fiction'"
        challenge_type = "complete_code"
        challenge_desc = "Select all 'product' elements with price attribute greater than 20."
        template = "//product[@price>20]"
        answer = "//product[@price>20]"
        hint = "The answer is already in the template."
    elif level == 17:
        title = "XPath Axes"
        theory = "XPath axes: ancestor, descendant, parent, child, following-sibling, preceding-sibling, self, attribute."
        code = "//book/ancestor::library  - selects the library ancestor of book"
        challenge_type = "true_false"
        challenge_desc = "The 'following-sibling' axis selects all nodes after the current node."
        template = ""
        answer = "true"
        hint = "Following-sibling selects siblings that come after."
    elif level == 18:
        title = "XSLT"
        theory = "XSLT transforms XML into other formats (HTML, text). It uses XPath to select nodes and templates to transform them."
        code = "<xsl:template match='/'>\n  <html><body><xsl:value-of select='//title'/></body></html>\n</xsl:template>"
        challenge_type = "complete_code"
        challenge_desc = "Use xsl:value-of to output the content of the 'name' element."
        template = "<xsl:value-of select='//name' />"
        answer = "<xsl:value-of select='//name' />"
        hint = "The answer is already in the template."
    elif level == 19:
        title = "XSLT Templates"
        theory = "XSLT uses templates to match and transform specific nodes. The match attribute uses XPath expressions."
        code = "<xsl:template match='book'>\n  <div><xsl:value-of select='title'/></div>\n</xsl:template>"
        challenge_type = "complete_code"
        challenge_desc = "Create an XSLT template that matches 'product' and outputs its name."
        template = "<xsl:template match='product'>\n  <p><xsl:value-of select='name'/></p>\n</xsl:template>"
        answer = "<xsl:template match='product'>\n  <p><xsl:value-of select='name'/></p>\n</xsl:template>"
        hint = "The answer is already in the template."
    elif level == 20:
        title = "XSLT for-each"
        theory = "xsl:for-each loops through a set of nodes selected by an XPath expression."
        code = "<xsl:for-each select='//book'>\n  <p><xsl:value-of select='title'/></p>\n</xsl:for-each>"
        challenge_type = "complete_code"
        challenge_desc = "Use xsl:for-each to loop through all 'item' elements."
        template = "<xsl:for-each select='//item'>\n  <p><xsl:value-of select='name'/></p>\n</xsl:for-each>"
        answer = "<xsl:for-each select='//item'>\n  <p><xsl:value-of select='name'/></p>\n</xsl:for-each>"
        hint = "The answer is already in the template."
    elif level == 21:
        title = "XSLT if"
        theory = "xsl:if conditionally processes content. The test attribute contains an XPath expression."
        code = "<xsl:if test='price &gt; 10'>\n  <p>Expensive</p>\n</xsl:if>"
        challenge_type = "complete_code"
        challenge_desc = "Use xsl:if to check if price is greater than 50."
        template = "<xsl:if test='price &gt; 50'>\n  <p>Premium</p>\n</xsl:if>"
        answer = "<xsl:if test='price &gt; 50'>\n  <p>Premium</p>\n</xsl:if>"
        hint = "The answer is already in the template."
    elif level == 22:
        title = "XSLT choose"
        theory = "xsl:choose, xsl:when, and xsl:otherwise create if-else if-else logic in XSLT."
        code = "<xsl:choose>\n  <xsl:when test='price &gt; 100'>Expensive</xsl:when>\n  <xsl:otherwise>Cheap</xsl:otherwise>\n</xsl:choose>"
        challenge_type = "complete_code"
        challenge_desc = "Use xsl:choose to output 'Adult' if age >= 18, else 'Minor'."
        template = "<xsl:choose>\n  <xsl:when test='age &gt;= 18'>Adult</xsl:when>\n  <xsl:otherwise>Minor</xsl:otherwise>\n</xsl:choose>"
        answer = "<xsl:choose>\n  <xsl:when test='age &gt;= 18'>Adult</xsl:when>\n  <xsl:otherwise>Minor</xsl:otherwise>\n</xsl:choose>"
        hint = "The answer is already in the template."
    elif level == 23:
        title = "XSLT sort"
        theory = "xsl:sort orders nodes in a for-each loop. Use select for the sort key and order for ascending/descending."
        code = "<xsl:for-each select='//book'>\n  <xsl:sort select='title'/>\n  <p><xsl:value-of select='title'/></p>\n</xsl:for-each>"
        challenge_type = "complete_code"
        challenge_desc = "Sort products by price in descending order."
        template = "<xsl:for-each select='//product'>\n  <xsl:sort select='price' order='descending'/>\n  <p><xsl:value-of select='name'/></p>\n</xsl:for-each>"
        answer = "<xsl:for-each select='//product'>\n  <xsl:sort select='price' order='descending'/>\n  <p><xsl:value-of select='name'/></p>\n</xsl:for-each>"
        hint = "The answer is already in the template."
    elif level == 24:
        title = "XML Parsing"
        theory = "XML can be parsed with DOM (tree-based) or SAX (event-based). DOM loads the entire document, SAX reads sequentially."
        code = "// DOM Parser\nDocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();\nDocumentBuilder builder = factory.newDocumentBuilder();\nDocument doc = builder.parse(new File(\"file.xml\"));"
        challenge_type = "true_false"
        challenge_desc = "DOM parsing loads the entire XML document into memory."
        template = ""
        answer = "true"
        hint = "DOM creates a tree representation of the entire document."
    elif level == 25:
        title = "XMLHttpRequest"
        theory = "XMLHttpRequest (XHR) is a browser API for fetching XML data. Despite the name, it can fetch any data type."
        code = "let xhr = new XMLHttpRequest();\nxhr.open('GET', 'data.xml', true);\nxhr.onload = function() { console.log(xhr.responseXML); };\nxhr.send();"
        challenge_type = "complete_code"
        challenge_desc = "Create an XMLHttpRequest to fetch 'data.xml'."
        template = "let xhr = new XMLHttpRequest();\nxhr.open('GET', 'data.xml', true);\nxhr.send();"
        answer = "let xhr = new XMLHttpRequest();\nxhr.open('GET', 'data.xml', true);\nxhr.send();"
        hint = "The answer is already in the template."
    elif level == 26:
        title = "RSS Feed"
        theory = "RSS is an XML format for news feeds. Elements: rss, channel, item, title, link, description, pubDate."
        code = "<rss version='2.0'>\n  <channel>\n    <title>My Feed</title>\n    <item>\n      <title>Article 1</title>\n      <link>http://example.com</link>\n    </item>\n  </channel>\n</rss>"
        challenge_type = "complete_code"
        challenge_desc = "Add an item element with a title 'Post 1' to the RSS feed."
        template = "<rss version='2.0'>\n  <channel>\n    <title>Blog</title>\n    <item>\n      <title>Post 1</title>\n    </item>\n  </channel>\n</rss>"
        answer = "<rss version='2.0'>\n  <channel>\n    <title>Blog</title>\n    <item>\n      <title>Post 1</title>\n    </item>\n  </channel>\n</rss>"
        hint = "The answer is already in the template."
    elif level == 27:
        title = "SOAP"
        theory = "SOAP is an XML-based messaging protocol. It uses an Envelope, Header, Body, and Fault structure."
        code = "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>\n  <soap:Body>\n    <getData xmlns='http://example.com'/>\n  </soap:Body>\n</soap:Envelope>"
        challenge_type = "complete_code"
        challenge_desc = "Create a SOAP envelope with a body containing a 'getUser' request."
        template = "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>\n  <soap:Body>\n    <getUser xmlns='http://example.com'/>\n  </soap:Body>\n</soap:Envelope>"
        answer = "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>\n  <soap:Body>\n    <getUser xmlns='http://example.com'/>\n  </soap:Body>\n</soap:Envelope>"
        hint = "The answer is already in the template."
    elif level == 28:
        title = "SVG in XML"
        theory = "SVG is an XML-based vector image format. Elements: svg, circle, rect, path, text, g."
        code = "<svg width='100' height='100' xmlns='http://www.w3.org/2000/svg'>\n  <circle cx='50' cy='50' r='40' fill='red' />\n</svg>"
        challenge_type = "complete_code"
        challenge_desc = "Create an SVG with a blue circle at center (50,50) radius 30."
        template = "<svg width='100' height='100' xmlns='http://www.w3.org/2000/svg'>\n  <circle cx='50' cy='50' r='30' fill='blue' />\n</svg>"
        answer = "<svg width='100' height='100' xmlns='http://www.w3.org/2000/svg'>\n  <circle cx='50' cy='50' r='30' fill='blue' />\n</svg>"
        hint = "The answer is already in the template."
    elif level == 29:
        title = "XML and CSS"
        theory = "XML can be styled with CSS. Use <?xml-stylesheet type='text/css' href='style.css'?> to link a stylesheet."
        code = "<?xml version='1.0'?>\n<?xml-stylesheet type='text/css' href='style.css'?>\n<root>\n  <item>Styled</item>\n</root>"
        challenge_type = "complete_code"
        challenge_desc = "Add a stylesheet link to the XML document."
        template = "<?xml version='1.0'?>\n<?xml-stylesheet type='text/css' href='style.css'?>\n<root>\n  <item>Content</item>\n</root>"
        answer = "<?xml version='1.0'?>\n<?xml-stylesheet type='text/css' href='style.css'?>\n<root>\n  <item>Content</item>\n</root>"
        hint = "The answer is already in the template."
    elif level == 30:
        title = "XML Validation"
        theory = "XML can be validated against a DTD or XSD schema. Valid XML must conform to the rules defined in the schema."
        code = "<?xml version='1.0'?>\n<!DOCTYPE note SYSTEM 'note.dtd'>\n<note>\n  <to>Tove</to>\n  <from>Jani</from>\n</note>"
        challenge_type = "true_false"
        challenge_desc = "Valid XML must be well-formed and also conform to its schema."
        template = ""
        answer = "true"
        hint = "Valid = well-formed + conforms to schema rules."
    elif level == 31:
        title = "XSLT Numbering"
        theory = "xsl:number inserts formatted numbers into the output. The value attribute specifies what to number."
        code = "<xsl:number value='position()' format='1. '/>"
        challenge_type = "complete_code"
        challenge_desc = "Use xsl:number to output the position of each item."
        template = "<xsl:for-each select='//item'>\n  <xsl:number value='position()' format='1. '/>\n  <xsl:value-of select='name'/>\n</xsl:for-each>"
        answer = "<xsl:for-each select='//item'>\n  <xsl:number value='position()' format='1. '/>\n  <xsl:value-of select='name'/>\n</xsl:for-each>"
        hint = "The answer is already in the template."
    elif level == 32:
        title = "XSLT Variables"
        theory = "xsl:variable stores a value for later use. Use $name to reference it. Variables are immutable."
        code = "<xsl:variable name='tax' select='0.2'/>\n<xsl:value-of select='price * $tax'/>"
        challenge_type = "complete_code"
        challenge_desc = "Create a variable named 'discount' with value 0.1 and use it."
        template = "<xsl:variable name='discount' select='0.1'/>\n<xsl:value-of select='price * $discount'/>"
        answer = "<xsl:variable name='discount' select='0.1'/>\n<xsl:value-of select='price * $discount'/>"
        hint = "The answer is already in the template."
    elif level == 33:
        title = "XPath Functions"
        theory = "XPath has built-in functions: string(), number(), concat(), substring(), contains(), starts-with(), count(), sum()."
        code = "//book[contains(title, 'XML')]  - selects books with 'XML' in the title"
        challenge_type = "complete_code"
        challenge_desc = "Use the contains() function to find products with 'Pro' in their name."
        template = "//product[contains(name, 'Pro')]"
        answer = "//product[contains(name, 'Pro')]"
        hint = "The answer is already in the template."
    elif level == 34:
        title = "XPath Normalize"
        theory = "normalize-space() removes leading/trailing whitespace and replaces multiple spaces with a single space."
        code = "//book[normalize-space(title) = 'XML Guide']"
        challenge_type = "predict_output"
        challenge_desc = "What does normalize-space('  Hello   World  ') return?"
        template = ""
        answer = "Hello World"
        hint = "It trims and collapses multiple spaces."
    elif level == 35:
        title = "XML Digital Signatures"
        theory = "XML Signatures provide integrity and authentication. They use <Signature> element with SignedInfo, SignatureValue, KeyInfo."
        code = "<Signature xmlns='http://www.w3.org/2000/09/xmldsig#'>\n  <SignedInfo>...</SignedInfo>\n  <SignatureValue>...</SignatureValue>\n</Signature>"
        challenge_type = "true_false"
        challenge_desc = "XML Signatures can sign only part of an XML document."
        template = ""
        answer = "true"
        hint = "XML Signatures can sign specific elements using references."
    elif level == 36:
        title = "XML Encryption"
        theory = "XML Encryption encrypts parts of an XML document. Uses <EncryptedData> element."
        code = "<EncryptedData xmlns='http://www.w3.org/2001/04/xmlenc#'>\n  <CipherData>\n    <CipherValue>...</CipherValue>\n  </CipherData>\n</EncryptedData>"
        challenge_type = "true_false"
        challenge_desc = "XML Encryption can encrypt only the content of an element, not the element itself."
        template = ""
        answer = "false"
        hint = "XML Encryption can encrypt elements, content, or entire documents."
    elif level == 37:
        title = "XLink"
        theory = "XLink defines links in XML. Use xlink:type='simple' and xlink:href='url' to create links."
        code = "<website xlink:type='simple' xlink:href='http://example.com' xmlns:xlink='http://www.w3.org/1999/xlink'>Visit</website>"
        challenge_type = "complete_code"
        challenge_desc = "Add an xlink:href attribute to the link element."
        template = "<link xlink:type='simple' xlink:href='http://example.com' xmlns:xlink='http://www.w3.org/1999/xlink'>Click</link>"
        answer = "<link xlink:type='simple' xlink:href='http://example.com' xmlns:xlink='http://www.w3.org/1999/xlink'>Click</link>"
        hint = "The answer is already in the template."
    elif level == 38:
        title = "XPointer"
        theory = "XPointer allows links to point to specific parts of an XML document using XPath expressions."
        code = "xpointer(id('section1'))  - points to the element with id='section1'"
        challenge_type = "true_false"
        challenge_desc = "XPointer can reference elements by their ID."
        template = ""
        answer = "true"
        hint = "XPointer uses xpointer() to reference specific elements."
    elif level == 39:
        title = "XML and JSON"
        theory = "XML and JSON are both data formats. JSON is lighter and easier to parse, XML has schema validation and namespaces."
        code = "<!-- XML -->\n<person><name>John</name><age>30</age></person>\n// JSON\n{\"person\": {\"name\": \"John\", \"age\": 30}}"
        challenge_type = "multiple_choice"
        challenge_desc = "Which format supports namespaces? XML or JSON?"
        template = "XML\nJSON\nBoth\nNeither"
        answer = "XML"
        hint = "XML has namespace support, JSON does not."
    elif level == 40:
        title = "XML Schema Types"
        theory = "XSD data types: xs:string, xs:integer, xs:decimal, xs:boolean, xs:date, xs:time, xs:dateTime."
        code = "<xs:element name='age' type='xs:integer'/>\n<xs:element name='birth' type='xs:date'/>"
        challenge_type = "complete_code"
        challenge_desc = "Define an element 'price' with type xs:decimal."
        template = "<xs:element name='price' type='xs:decimal'/>"
        answer = "<xs:element name='price' type='xs:decimal'/>"
        hint = "The answer is already in the template."
    elif level <= 60:
        title = "XML Advanced " + str(level - 40)
        topics = ["XSD Sequences", "XSD Choice", "XSD Attributes", "XSD Restrictions", "XSD Patterns", "XSD Enumerations", "XSD minOccurs", "XSD maxOccurs", "XSD Any", "XSD Groups", "XSD attributeGroup", "XSD key", "XSD keyref", "XSD unique", "XSD include", "XSD import", "XSD redefine", "XSD notation", "XSD Annotations", "XSD Documentation"]
        topic = topics[(level - 41) % len(topics)]
        theory = "This level covers " + topic + " in XML Schema."
        code = "<!-- Example of " + topic + " -->\n<xs:schema>...</xs:schema>"
        challenge_type = "complete_code" if level % 3 == 0 else ("true_false" if level % 3 == 1 else "predict_output")
        challenge_desc = "Answer the question about " + topic + "."
        template = "<!-- " + topic + " -->\n<xs:schema>...</xs:schema>"
        answer = "<!-- " + topic + " -->\n<xs:schema>...</xs:schema>"
        hint = "Review the documentation for " + topic + "."
    elif level <= 80:
        title = "XSLT Advanced " + str(level - 60)
        topics = ["XSLT apply-templates", "XSLT call-template", "XSLT param", "XSLT with-param", "XSLT copy", "XSLT copy-of", "XSLT message", "XSLT fallback", "XSLT namespace-alias", "XSLT decimal-format", "XSLT key", "XSLT document", "XSLT generate-id", "XSLT format-number", "XSLT current", "XSLT element", "XSLT attribute", "XSLT text", "XSLT processing-instruction", "XSLT comment"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + " in XSLT."
        code = "<!-- Example of " + topic + " -->\n<xsl:template>...</xsl:template>"
        challenge_type = "complete_code" if level % 3 == 0 else ("true_false" if level % 3 == 1 else "predict_output")
        challenge_desc = "Answer the question about " + topic + "."
        template = "<!-- " + topic + " -->\n<xsl:template>...</xsl:template>"
        answer = "<!-- " + topic + " -->\n<xsl:template>...</xsl:template>"
        hint = "Review the documentation for " + topic + "."
    elif level <= 100:
        title = "XML Mastery " + str(level - 80)
        topics = ["XQuery FLWOR", "XQuery for", "XQuery let", "XQuery where", "XQuery order by", "XQuery return", "XQuery Functions", "XQuery Sequences", "XQuery Types", "XQuery FLWOR Examples", "XPath 2.0", "XPath 3.0", "XML Databases", "eXist-db", "BaseX", "MarkLogic", "XML Performance", "XML Indexing", "XML Security", "XML Best Practices"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert XML developers."
        code = "<!-- Advanced: " + topic + " -->\n<root/>"
        challenge_type = "complete_code" if level % 2 == 0 else "true_false"
        challenge_desc = "Answer the question about " + topic + "."
        template = "<!-- " + topic + " -->\n<root/>"
        answer = "<!-- " + topic + " -->\n<root/>"
        hint = "Review the documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "xml",
        "level_number": level,
        "title": title,
        "theory_text": theory,
        "code_example": code,
        "challenge_type": challenge_type,
        "challenge_description": challenge_desc,
        "challenge_template": template,
        "correct_answer": answer,
        "hint": hint,
        "xp_reward": xp,
        "difficulty": difficulty
    })

def generate_sql():
    sql_lines = []
    sql_lines.append("-- XML lessons seed data (100 levels)")
    sql_lines.append("")

    for lesson in LESSON_TEMPLATES:
        lang = lesson["language"].replace("'", "''")
        title = lesson["title"].replace("'", "''")
        theory = lesson["theory_text"].replace("'", "''")
        code = lesson["code_example"].replace("'", "''")
        ctype = lesson["challenge_type"]
        cdesc = lesson["challenge_description"].replace("'", "''")
        template = lesson["challenge_template"].replace("'", "''")
        answer = lesson["correct_answer"].replace("'", "''")
        hint = lesson["hint"].replace("'", "''")
        xp = lesson["xp_reward"]
        diff = lesson["difficulty"]
        num = lesson["level_number"]

        sql = "INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('" + lang + "', " + str(num) + ", '" + title + "', '" + theory + "', '" + code + "', '" + ctype + "', '" + cdesc + "', '" + template + "', '" + answer + "', '" + hint + "', " + str(xp) + ", '" + diff + "', 1);"
        sql_lines.append(sql)

    return "\n".join(sql_lines)

if __name__ == "__main__":
    sql = generate_sql()
    with open("seed_xml_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " XML lesson SQL statements")
    print("Output written to seed_xml_lessons.sql")