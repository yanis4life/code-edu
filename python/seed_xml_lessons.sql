-- XML lessons seed data (100 levels)

INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 1, 'XML Declaration', 'XML is a markup language for storing and transporting data. Every XML document starts with an XML declaration: <?xml version=''1.0'' encoding=''UTF-8''?>', '<?xml version=''1.0'' encoding=''UTF-8''?>
<note>
  <to>Tove</to>
  <from>Jani</from>
</note>', 'complete_code', 'Add the XML declaration at the top of the document.', '<note>
  <to>Tove</to>
</note>', '<?xml version=''1.0'' encoding=''UTF-8''?>
<note>
  <to>Tove</to>
</note>', 'Use <?xml version=''1.0'' encoding=''UTF-8''?> at the top.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 2, 'Root Element', 'Every XML document must have exactly one root element that contains all other elements.', '<root>
  <child>Content</child>
</root>', 'complete_code', 'Wrap the child elements in a root element called ''library''.', '<book>Title</book>
<book>Author</book>', '<library>
  <book>Title</book>
  <book>Author</book>
</library>', 'Wrap everything in a <library> tag.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 3, 'Elements', 'XML elements have opening and closing tags. Element names are case-sensitive. Content goes between tags.', '<message>Hello World</message>', 'complete_code', 'Create an element called ''title'' with the content ''My Document''.', '<title>My Document</title>', '<title>My Document</title>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 4, 'Nested Elements', 'XML elements can be nested inside other elements. Proper nesting is required: <a><b></b></a> is correct.', '<person>
  <name>John</name>
  <age>30</age>
</person>', 'complete_code', 'Create a ''book'' element containing ''title'' and ''author'' child elements.', '<book>
  <title>XML Guide</title>
  <author>John</author>
</book>', '<book>
  <title>XML Guide</title>
  <author>John</author>
</book>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 5, 'Attributes', 'Attributes provide additional information about elements. They are name-value pairs inside the opening tag.', '<book category=''fiction''>The Hobbit</book>', 'complete_code', 'Add a ''lang'' attribute with value ''en'' to the paragraph element.', '<p lang=''en''>Hello</p>', '<p lang=''en''>Hello</p>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 6, 'Self-Closing Tags', 'An element with no content can be self-closing: <tag />. The slash goes before the closing angle bracket.', '<br />
<hr />
<img src=''photo.jpg'' />', 'complete_code', 'Create a self-closing ''linebreak'' element.', '<linebreak />', '<linebreak />', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 7, 'Comments', 'XML comments are not processed. Syntax: <!-- comment -->. Comments cannot be nested.', '<!-- This is a comment -->
<note>Content</note>', 'complete_code', 'Add a comment above the note element saying ''Important message''.', '<!-- Important message -->
<note>Content</note>', '<!-- Important message -->
<note>Content</note>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 8, 'CDATA', 'CDATA sections contain text that should not be parsed as XML. Syntax: <![CDATA[ text ]]>', '<script><![CDATA[ if (x < 10) { } ]]></script>', 'complete_code', 'Wrap the code in a CDATA section so the < and > are not parsed.', '<code><![CDATA[ if (a < b) { } ]]></code>', '<code><![CDATA[ if (a < b) { } ]]></code>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 9, 'Entity References', 'XML has predefined entities: &lt; (<), &gt; (>), &amp; (&), &apos; (''), &quot; ("). Use them to avoid parsing errors.', '<message>5 &lt; 10 &amp;&amp; 10 &gt; 5</message>', 'complete_code', 'Use the entity &amp; to represent an ampersand in the text.', '<text>AT&amp;T Company</text>', '<text>AT&amp;T Company</text>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 10, 'Well-Formed XML', 'Well-formed XML rules: one root element, proper nesting, closing tags, quoted attributes, case-sensitive.', '<?xml version=''1.0''?>
<root>
  <item id=''1''>Value</item>
</root>', 'true_false', 'XML tags are case-insensitive.', '', 'false', 'XML is case-sensitive. <Tag> and <tag> are different.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 11, 'XML Namespaces', 'Namespaces prevent element name conflicts. Use xmlns:prefix=''URI''. The default namespace has no prefix.', '<root xmlns:h=''http://www.w3.org/TR/html5/''>
  <h:table>HTML table</h:table>
  <f:table>Furniture</f:table>
</root>', 'complete_code', 'Add namespace xmlns:book=''http://example.com/books'' to the library element.', '<library xmlns:book=''http://example.com/books''>
  <book:item>Novel</book:item>
</library>', '<library xmlns:book=''http://example.com/books''>
  <book:item>Novel</book:item>
</library>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 12, 'XML Schema', 'XSD (XML Schema Definition) defines the structure of an XML document. It specifies elements, attributes, and data types.', '<xs:schema xmlns:xs=''http://www.w3.org/2001/XMLSchema''>
  <xs:element name=''note'' type=''xs:string''/>
</xs:schema>', 'true_false', 'XML Schema is used to define the structure of an XML document.', '', 'true', 'XSD defines the valid structure of XML documents.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 13, 'DTD', 'DTD (Document Type Definition) defines the structure of XML documents. It uses !DOCTYPE, !ELEMENT, !ATTLIST.', '<!DOCTYPE note [
  <!ELEMENT note (to, from, message)>
  <!ELEMENT to (#PCDATA)>
  <!ELEMENT from (#PCDATA)>
  <!ELEMENT message (#PCDATA)>
]>', 'complete_code', 'Create a DTD for a ''book'' element with ''title'' and ''author'' children.', '<!DOCTYPE book [
  <!ELEMENT book (title, author)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (#PCDATA)>
]>', '<!DOCTYPE book [
  <!ELEMENT book (title, author)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (#PCDATA)>
]>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 14, 'PCDATA and CDATA', 'PCDATA is parsed character data (parsed by XML parser). CDATA is character data not parsed by the parser.', '<!ELEMENT name (#PCDATA)>
<data><![CDATA[Raw text with <tags> ignored]]></data>', 'predict_output', 'Can CDATA contain unescaped < and > characters?', '', 'yes', 'CDATA sections are not parsed, so special characters are allowed.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 15, 'XPath', 'XPath is a query language for selecting nodes in XML. / selects from root, // selects anywhere, @ selects attributes.', '//book/title  - selects all title elements under any book element', 'complete_code', 'Write an XPath to select all ''title'' elements anywhere in the document.', '//title', '//title', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 16, 'XPath Predicates', 'XPath predicates filter nodes. They are in square brackets: [@attr=''value''], [position()], [price>10].', '//book[@category=''fiction'']  - selects books with category=''fiction''', 'complete_code', 'Select all ''product'' elements with price attribute greater than 20.', '//product[@price>20]', '//product[@price>20]', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 17, 'XPath Axes', 'XPath axes: ancestor, descendant, parent, child, following-sibling, preceding-sibling, self, attribute.', '//book/ancestor::library  - selects the library ancestor of book', 'true_false', 'The ''following-sibling'' axis selects all nodes after the current node.', '', 'true', 'Following-sibling selects siblings that come after.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 18, 'XSLT', 'XSLT transforms XML into other formats (HTML, text). It uses XPath to select nodes and templates to transform them.', '<xsl:template match=''/''>
  <html><body><xsl:value-of select=''//title''/></body></html>
</xsl:template>', 'complete_code', 'Use xsl:value-of to output the content of the ''name'' element.', '<xsl:value-of select=''//name'' />', '<xsl:value-of select=''//name'' />', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 19, 'XSLT Templates', 'XSLT uses templates to match and transform specific nodes. The match attribute uses XPath expressions.', '<xsl:template match=''book''>
  <div><xsl:value-of select=''title''/></div>
</xsl:template>', 'complete_code', 'Create an XSLT template that matches ''product'' and outputs its name.', '<xsl:template match=''product''>
  <p><xsl:value-of select=''name''/></p>
</xsl:template>', '<xsl:template match=''product''>
  <p><xsl:value-of select=''name''/></p>
</xsl:template>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 20, 'XSLT for-each', 'xsl:for-each loops through a set of nodes selected by an XPath expression.', '<xsl:for-each select=''//book''>
  <p><xsl:value-of select=''title''/></p>
</xsl:for-each>', 'complete_code', 'Use xsl:for-each to loop through all ''item'' elements.', '<xsl:for-each select=''//item''>
  <p><xsl:value-of select=''name''/></p>
</xsl:for-each>', '<xsl:for-each select=''//item''>
  <p><xsl:value-of select=''name''/></p>
</xsl:for-each>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 21, 'XSLT if', 'xsl:if conditionally processes content. The test attribute contains an XPath expression.', '<xsl:if test=''price &gt; 10''>
  <p>Expensive</p>
</xsl:if>', 'complete_code', 'Use xsl:if to check if price is greater than 50.', '<xsl:if test=''price &gt; 50''>
  <p>Premium</p>
</xsl:if>', '<xsl:if test=''price &gt; 50''>
  <p>Premium</p>
</xsl:if>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 22, 'XSLT choose', 'xsl:choose, xsl:when, and xsl:otherwise create if-else if-else logic in XSLT.', '<xsl:choose>
  <xsl:when test=''price &gt; 100''>Expensive</xsl:when>
  <xsl:otherwise>Cheap</xsl:otherwise>
</xsl:choose>', 'complete_code', 'Use xsl:choose to output ''Adult'' if age >= 18, else ''Minor''.', '<xsl:choose>
  <xsl:when test=''age &gt;= 18''>Adult</xsl:when>
  <xsl:otherwise>Minor</xsl:otherwise>
</xsl:choose>', '<xsl:choose>
  <xsl:when test=''age &gt;= 18''>Adult</xsl:when>
  <xsl:otherwise>Minor</xsl:otherwise>
</xsl:choose>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 23, 'XSLT sort', 'xsl:sort orders nodes in a for-each loop. Use select for the sort key and order for ascending/descending.', '<xsl:for-each select=''//book''>
  <xsl:sort select=''title''/>
  <p><xsl:value-of select=''title''/></p>
</xsl:for-each>', 'complete_code', 'Sort products by price in descending order.', '<xsl:for-each select=''//product''>
  <xsl:sort select=''price'' order=''descending''/>
  <p><xsl:value-of select=''name''/></p>
</xsl:for-each>', '<xsl:for-each select=''//product''>
  <xsl:sort select=''price'' order=''descending''/>
  <p><xsl:value-of select=''name''/></p>
</xsl:for-each>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 24, 'XML Parsing', 'XML can be parsed with DOM (tree-based) or SAX (event-based). DOM loads the entire document, SAX reads sequentially.', '// DOM Parser
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
DocumentBuilder builder = factory.newDocumentBuilder();
Document doc = builder.parse(new File("file.xml"));', 'true_false', 'DOM parsing loads the entire XML document into memory.', '', 'true', 'DOM creates a tree representation of the entire document.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 25, 'XMLHttpRequest', 'XMLHttpRequest (XHR) is a browser API for fetching XML data. Despite the name, it can fetch any data type.', 'let xhr = new XMLHttpRequest();
xhr.open(''GET'', ''data.xml'', true);
xhr.onload = function() { console.log(xhr.responseXML); };
xhr.send();', 'complete_code', 'Create an XMLHttpRequest to fetch ''data.xml''.', 'let xhr = new XMLHttpRequest();
xhr.open(''GET'', ''data.xml'', true);
xhr.send();', 'let xhr = new XMLHttpRequest();
xhr.open(''GET'', ''data.xml'', true);
xhr.send();', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 26, 'RSS Feed', 'RSS is an XML format for news feeds. Elements: rss, channel, item, title, link, description, pubDate.', '<rss version=''2.0''>
  <channel>
    <title>My Feed</title>
    <item>
      <title>Article 1</title>
      <link>http://example.com</link>
    </item>
  </channel>
</rss>', 'complete_code', 'Add an item element with a title ''Post 1'' to the RSS feed.', '<rss version=''2.0''>
  <channel>
    <title>Blog</title>
    <item>
      <title>Post 1</title>
    </item>
  </channel>
</rss>', '<rss version=''2.0''>
  <channel>
    <title>Blog</title>
    <item>
      <title>Post 1</title>
    </item>
  </channel>
</rss>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 27, 'SOAP', 'SOAP is an XML-based messaging protocol. It uses an Envelope, Header, Body, and Fault structure.', '<soap:Envelope xmlns:soap=''http://schemas.xmlsoap.org/soap/envelope/''>
  <soap:Body>
    <getData xmlns=''http://example.com''/>
  </soap:Body>
</soap:Envelope>', 'complete_code', 'Create a SOAP envelope with a body containing a ''getUser'' request.', '<soap:Envelope xmlns:soap=''http://schemas.xmlsoap.org/soap/envelope/''>
  <soap:Body>
    <getUser xmlns=''http://example.com''/>
  </soap:Body>
</soap:Envelope>', '<soap:Envelope xmlns:soap=''http://schemas.xmlsoap.org/soap/envelope/''>
  <soap:Body>
    <getUser xmlns=''http://example.com''/>
  </soap:Body>
</soap:Envelope>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 28, 'SVG in XML', 'SVG is an XML-based vector image format. Elements: svg, circle, rect, path, text, g.', '<svg width=''100'' height=''100'' xmlns=''http://www.w3.org/2000/svg''>
  <circle cx=''50'' cy=''50'' r=''40'' fill=''red'' />
</svg>', 'complete_code', 'Create an SVG with a blue circle at center (50,50) radius 30.', '<svg width=''100'' height=''100'' xmlns=''http://www.w3.org/2000/svg''>
  <circle cx=''50'' cy=''50'' r=''30'' fill=''blue'' />
</svg>', '<svg width=''100'' height=''100'' xmlns=''http://www.w3.org/2000/svg''>
  <circle cx=''50'' cy=''50'' r=''30'' fill=''blue'' />
</svg>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 29, 'XML and CSS', 'XML can be styled with CSS. Use <?xml-stylesheet type=''text/css'' href=''style.css''?> to link a stylesheet.', '<?xml version=''1.0''?>
<?xml-stylesheet type=''text/css'' href=''style.css''?>
<root>
  <item>Styled</item>
</root>', 'complete_code', 'Add a stylesheet link to the XML document.', '<?xml version=''1.0''?>
<?xml-stylesheet type=''text/css'' href=''style.css''?>
<root>
  <item>Content</item>
</root>', '<?xml version=''1.0''?>
<?xml-stylesheet type=''text/css'' href=''style.css''?>
<root>
  <item>Content</item>
</root>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 30, 'XML Validation', 'XML can be validated against a DTD or XSD schema. Valid XML must conform to the rules defined in the schema.', '<?xml version=''1.0''?>
<!DOCTYPE note SYSTEM ''note.dtd''>
<note>
  <to>Tove</to>
  <from>Jani</from>
</note>', 'true_false', 'Valid XML must be well-formed and also conform to its schema.', '', 'true', 'Valid = well-formed + conforms to schema rules.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 31, 'XSLT Numbering', 'xsl:number inserts formatted numbers into the output. The value attribute specifies what to number.', '<xsl:number value=''position()'' format=''1. ''/>', 'complete_code', 'Use xsl:number to output the position of each item.', '<xsl:for-each select=''//item''>
  <xsl:number value=''position()'' format=''1. ''/>
  <xsl:value-of select=''name''/>
</xsl:for-each>', '<xsl:for-each select=''//item''>
  <xsl:number value=''position()'' format=''1. ''/>
  <xsl:value-of select=''name''/>
</xsl:for-each>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 32, 'XSLT Variables', 'xsl:variable stores a value for later use. Use $name to reference it. Variables are immutable.', '<xsl:variable name=''tax'' select=''0.2''/>
<xsl:value-of select=''price * $tax''/>', 'complete_code', 'Create a variable named ''discount'' with value 0.1 and use it.', '<xsl:variable name=''discount'' select=''0.1''/>
<xsl:value-of select=''price * $discount''/>', '<xsl:variable name=''discount'' select=''0.1''/>
<xsl:value-of select=''price * $discount''/>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 33, 'XPath Functions', 'XPath has built-in functions: string(), number(), concat(), substring(), contains(), starts-with(), count(), sum().', '//book[contains(title, ''XML'')]  - selects books with ''XML'' in the title', 'complete_code', 'Use the contains() function to find products with ''Pro'' in their name.', '//product[contains(name, ''Pro'')]', '//product[contains(name, ''Pro'')]', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 34, 'XPath Normalize', 'normalize-space() removes leading/trailing whitespace and replaces multiple spaces with a single space.', '//book[normalize-space(title) = ''XML Guide'']', 'predict_output', 'What does normalize-space(''  Hello   World  '') return?', '', 'Hello World', 'It trims and collapses multiple spaces.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 35, 'XML Digital Signatures', 'XML Signatures provide integrity and authentication. They use <Signature> element with SignedInfo, SignatureValue, KeyInfo.', '<Signature xmlns=''http://www.w3.org/2000/09/xmldsig#''>
  <SignedInfo>...</SignedInfo>
  <SignatureValue>...</SignatureValue>
</Signature>', 'true_false', 'XML Signatures can sign only part of an XML document.', '', 'true', 'XML Signatures can sign specific elements using references.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 36, 'XML Encryption', 'XML Encryption encrypts parts of an XML document. Uses <EncryptedData> element.', '<EncryptedData xmlns=''http://www.w3.org/2001/04/xmlenc#''>
  <CipherData>
    <CipherValue>...</CipherValue>
  </CipherData>
</EncryptedData>', 'true_false', 'XML Encryption can encrypt only the content of an element, not the element itself.', '', 'false', 'XML Encryption can encrypt elements, content, or entire documents.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 37, 'XLink', 'XLink defines links in XML. Use xlink:type=''simple'' and xlink:href=''url'' to create links.', '<website xlink:type=''simple'' xlink:href=''http://example.com'' xmlns:xlink=''http://www.w3.org/1999/xlink''>Visit</website>', 'complete_code', 'Add an xlink:href attribute to the link element.', '<link xlink:type=''simple'' xlink:href=''http://example.com'' xmlns:xlink=''http://www.w3.org/1999/xlink''>Click</link>', '<link xlink:type=''simple'' xlink:href=''http://example.com'' xmlns:xlink=''http://www.w3.org/1999/xlink''>Click</link>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 38, 'XPointer', 'XPointer allows links to point to specific parts of an XML document using XPath expressions.', 'xpointer(id(''section1''))  - points to the element with id=''section1''', 'true_false', 'XPointer can reference elements by their ID.', '', 'true', 'XPointer uses xpointer() to reference specific elements.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 39, 'XML and JSON', 'XML and JSON are both data formats. JSON is lighter and easier to parse, XML has schema validation and namespaces.', '<!-- XML -->
<person><name>John</name><age>30</age></person>
// JSON
{"person": {"name": "John", "age": 30}}', 'multiple_choice', 'Which format supports namespaces? XML or JSON?', 'XML
JSON
Both
Neither', 'XML', 'XML has namespace support, JSON does not.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 40, 'XML Schema Types', 'XSD data types: xs:string, xs:integer, xs:decimal, xs:boolean, xs:date, xs:time, xs:dateTime.', '<xs:element name=''age'' type=''xs:integer''/>
<xs:element name=''birth'' type=''xs:date''/>', 'complete_code', 'Define an element ''price'' with type xs:decimal.', '<xs:element name=''price'' type=''xs:decimal''/>', '<xs:element name=''price'' type=''xs:decimal''/>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 41, 'XML Advanced 1', 'This level covers XSD Sequences in XML Schema.', '<!-- Example of XSD Sequences -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD Sequences.', '<!-- XSD Sequences -->
<xs:schema>...</xs:schema>', '<!-- XSD Sequences -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Sequences.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 42, 'XML Advanced 2', 'This level covers XSD Choice in XML Schema.', '<!-- Example of XSD Choice -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD Choice.', '<!-- XSD Choice -->
<xs:schema>...</xs:schema>', '<!-- XSD Choice -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Choice.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 43, 'XML Advanced 3', 'This level covers XSD Attributes in XML Schema.', '<!-- Example of XSD Attributes -->
<xs:schema>...</xs:schema>', 'true_false', 'Answer the question about XSD Attributes.', '<!-- XSD Attributes -->
<xs:schema>...</xs:schema>', '<!-- XSD Attributes -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Attributes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 44, 'XML Advanced 4', 'This level covers XSD Restrictions in XML Schema.', '<!-- Example of XSD Restrictions -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD Restrictions.', '<!-- XSD Restrictions -->
<xs:schema>...</xs:schema>', '<!-- XSD Restrictions -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Restrictions.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 45, 'XML Advanced 5', 'This level covers XSD Patterns in XML Schema.', '<!-- Example of XSD Patterns -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD Patterns.', '<!-- XSD Patterns -->
<xs:schema>...</xs:schema>', '<!-- XSD Patterns -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Patterns.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 46, 'XML Advanced 6', 'This level covers XSD Enumerations in XML Schema.', '<!-- Example of XSD Enumerations -->
<xs:schema>...</xs:schema>', 'true_false', 'Answer the question about XSD Enumerations.', '<!-- XSD Enumerations -->
<xs:schema>...</xs:schema>', '<!-- XSD Enumerations -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Enumerations.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 47, 'XML Advanced 7', 'This level covers XSD minOccurs in XML Schema.', '<!-- Example of XSD minOccurs -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD minOccurs.', '<!-- XSD minOccurs -->
<xs:schema>...</xs:schema>', '<!-- XSD minOccurs -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD minOccurs.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 48, 'XML Advanced 8', 'This level covers XSD maxOccurs in XML Schema.', '<!-- Example of XSD maxOccurs -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD maxOccurs.', '<!-- XSD maxOccurs -->
<xs:schema>...</xs:schema>', '<!-- XSD maxOccurs -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD maxOccurs.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 49, 'XML Advanced 9', 'This level covers XSD Any in XML Schema.', '<!-- Example of XSD Any -->
<xs:schema>...</xs:schema>', 'true_false', 'Answer the question about XSD Any.', '<!-- XSD Any -->
<xs:schema>...</xs:schema>', '<!-- XSD Any -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Any.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 50, 'XML Advanced 10', 'This level covers XSD Groups in XML Schema.', '<!-- Example of XSD Groups -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD Groups.', '<!-- XSD Groups -->
<xs:schema>...</xs:schema>', '<!-- XSD Groups -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Groups.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 51, 'XML Advanced 11', 'This level covers XSD attributeGroup in XML Schema.', '<!-- Example of XSD attributeGroup -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD attributeGroup.', '<!-- XSD attributeGroup -->
<xs:schema>...</xs:schema>', '<!-- XSD attributeGroup -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD attributeGroup.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 52, 'XML Advanced 12', 'This level covers XSD key in XML Schema.', '<!-- Example of XSD key -->
<xs:schema>...</xs:schema>', 'true_false', 'Answer the question about XSD key.', '<!-- XSD key -->
<xs:schema>...</xs:schema>', '<!-- XSD key -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD key.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 53, 'XML Advanced 13', 'This level covers XSD keyref in XML Schema.', '<!-- Example of XSD keyref -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD keyref.', '<!-- XSD keyref -->
<xs:schema>...</xs:schema>', '<!-- XSD keyref -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD keyref.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 54, 'XML Advanced 14', 'This level covers XSD unique in XML Schema.', '<!-- Example of XSD unique -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD unique.', '<!-- XSD unique -->
<xs:schema>...</xs:schema>', '<!-- XSD unique -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD unique.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 55, 'XML Advanced 15', 'This level covers XSD include in XML Schema.', '<!-- Example of XSD include -->
<xs:schema>...</xs:schema>', 'true_false', 'Answer the question about XSD include.', '<!-- XSD include -->
<xs:schema>...</xs:schema>', '<!-- XSD include -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD include.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 56, 'XML Advanced 16', 'This level covers XSD import in XML Schema.', '<!-- Example of XSD import -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD import.', '<!-- XSD import -->
<xs:schema>...</xs:schema>', '<!-- XSD import -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD import.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 57, 'XML Advanced 17', 'This level covers XSD redefine in XML Schema.', '<!-- Example of XSD redefine -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD redefine.', '<!-- XSD redefine -->
<xs:schema>...</xs:schema>', '<!-- XSD redefine -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD redefine.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 58, 'XML Advanced 18', 'This level covers XSD notation in XML Schema.', '<!-- Example of XSD notation -->
<xs:schema>...</xs:schema>', 'true_false', 'Answer the question about XSD notation.', '<!-- XSD notation -->
<xs:schema>...</xs:schema>', '<!-- XSD notation -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD notation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 59, 'XML Advanced 19', 'This level covers XSD Annotations in XML Schema.', '<!-- Example of XSD Annotations -->
<xs:schema>...</xs:schema>', 'predict_output', 'Answer the question about XSD Annotations.', '<!-- XSD Annotations -->
<xs:schema>...</xs:schema>', '<!-- XSD Annotations -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Annotations.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 60, 'XML Advanced 20', 'This level covers XSD Documentation in XML Schema.', '<!-- Example of XSD Documentation -->
<xs:schema>...</xs:schema>', 'complete_code', 'Answer the question about XSD Documentation.', '<!-- XSD Documentation -->
<xs:schema>...</xs:schema>', '<!-- XSD Documentation -->
<xs:schema>...</xs:schema>', 'Review the documentation for XSD Documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 61, 'XSLT Advanced 1', 'This level covers XSLT apply-templates in XSLT.', '<!-- Example of XSLT apply-templates -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT apply-templates.', '<!-- XSLT apply-templates -->
<xsl:template>...</xsl:template>', '<!-- XSLT apply-templates -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT apply-templates.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 62, 'XSLT Advanced 2', 'This level covers XSLT call-template in XSLT.', '<!-- Example of XSLT call-template -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT call-template.', '<!-- XSLT call-template -->
<xsl:template>...</xsl:template>', '<!-- XSLT call-template -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT call-template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 63, 'XSLT Advanced 3', 'This level covers XSLT param in XSLT.', '<!-- Example of XSLT param -->
<xsl:template>...</xsl:template>', 'complete_code', 'Answer the question about XSLT param.', '<!-- XSLT param -->
<xsl:template>...</xsl:template>', '<!-- XSLT param -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT param.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 64, 'XSLT Advanced 4', 'This level covers XSLT with-param in XSLT.', '<!-- Example of XSLT with-param -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT with-param.', '<!-- XSLT with-param -->
<xsl:template>...</xsl:template>', '<!-- XSLT with-param -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT with-param.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 65, 'XSLT Advanced 5', 'This level covers XSLT copy in XSLT.', '<!-- Example of XSLT copy -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT copy.', '<!-- XSLT copy -->
<xsl:template>...</xsl:template>', '<!-- XSLT copy -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT copy.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 66, 'XSLT Advanced 6', 'This level covers XSLT copy-of in XSLT.', '<!-- Example of XSLT copy-of -->
<xsl:template>...</xsl:template>', 'complete_code', 'Answer the question about XSLT copy-of.', '<!-- XSLT copy-of -->
<xsl:template>...</xsl:template>', '<!-- XSLT copy-of -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT copy-of.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 67, 'XSLT Advanced 7', 'This level covers XSLT message in XSLT.', '<!-- Example of XSLT message -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT message.', '<!-- XSLT message -->
<xsl:template>...</xsl:template>', '<!-- XSLT message -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT message.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 68, 'XSLT Advanced 8', 'This level covers XSLT fallback in XSLT.', '<!-- Example of XSLT fallback -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT fallback.', '<!-- XSLT fallback -->
<xsl:template>...</xsl:template>', '<!-- XSLT fallback -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT fallback.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 69, 'XSLT Advanced 9', 'This level covers XSLT namespace-alias in XSLT.', '<!-- Example of XSLT namespace-alias -->
<xsl:template>...</xsl:template>', 'complete_code', 'Answer the question about XSLT namespace-alias.', '<!-- XSLT namespace-alias -->
<xsl:template>...</xsl:template>', '<!-- XSLT namespace-alias -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT namespace-alias.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 70, 'XSLT Advanced 10', 'This level covers XSLT decimal-format in XSLT.', '<!-- Example of XSLT decimal-format -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT decimal-format.', '<!-- XSLT decimal-format -->
<xsl:template>...</xsl:template>', '<!-- XSLT decimal-format -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT decimal-format.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 71, 'XSLT Advanced 11', 'This level covers XSLT key in XSLT.', '<!-- Example of XSLT key -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT key.', '<!-- XSLT key -->
<xsl:template>...</xsl:template>', '<!-- XSLT key -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT key.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 72, 'XSLT Advanced 12', 'This level covers XSLT document in XSLT.', '<!-- Example of XSLT document -->
<xsl:template>...</xsl:template>', 'complete_code', 'Answer the question about XSLT document.', '<!-- XSLT document -->
<xsl:template>...</xsl:template>', '<!-- XSLT document -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT document.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 73, 'XSLT Advanced 13', 'This level covers XSLT generate-id in XSLT.', '<!-- Example of XSLT generate-id -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT generate-id.', '<!-- XSLT generate-id -->
<xsl:template>...</xsl:template>', '<!-- XSLT generate-id -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT generate-id.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 74, 'XSLT Advanced 14', 'This level covers XSLT format-number in XSLT.', '<!-- Example of XSLT format-number -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT format-number.', '<!-- XSLT format-number -->
<xsl:template>...</xsl:template>', '<!-- XSLT format-number -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT format-number.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 75, 'XSLT Advanced 15', 'This level covers XSLT current in XSLT.', '<!-- Example of XSLT current -->
<xsl:template>...</xsl:template>', 'complete_code', 'Answer the question about XSLT current.', '<!-- XSLT current -->
<xsl:template>...</xsl:template>', '<!-- XSLT current -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT current.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 76, 'XSLT Advanced 16', 'This level covers XSLT element in XSLT.', '<!-- Example of XSLT element -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT element.', '<!-- XSLT element -->
<xsl:template>...</xsl:template>', '<!-- XSLT element -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT element.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 77, 'XSLT Advanced 17', 'This level covers XSLT attribute in XSLT.', '<!-- Example of XSLT attribute -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT attribute.', '<!-- XSLT attribute -->
<xsl:template>...</xsl:template>', '<!-- XSLT attribute -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT attribute.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 78, 'XSLT Advanced 18', 'This level covers XSLT text in XSLT.', '<!-- Example of XSLT text -->
<xsl:template>...</xsl:template>', 'complete_code', 'Answer the question about XSLT text.', '<!-- XSLT text -->
<xsl:template>...</xsl:template>', '<!-- XSLT text -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT text.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 79, 'XSLT Advanced 19', 'This level covers XSLT processing-instruction in XSLT.', '<!-- Example of XSLT processing-instruction -->
<xsl:template>...</xsl:template>', 'true_false', 'Answer the question about XSLT processing-instruction.', '<!-- XSLT processing-instruction -->
<xsl:template>...</xsl:template>', '<!-- XSLT processing-instruction -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT processing-instruction.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 80, 'XSLT Advanced 20', 'This level covers XSLT comment in XSLT.', '<!-- Example of XSLT comment -->
<xsl:template>...</xsl:template>', 'predict_output', 'Answer the question about XSLT comment.', '<!-- XSLT comment -->
<xsl:template>...</xsl:template>', '<!-- XSLT comment -->
<xsl:template>...</xsl:template>', 'Review the documentation for XSLT comment.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 81, 'XML Mastery 1', 'Mastering XQuery FLWOR distinguishes expert XML developers.', '<!-- Advanced: XQuery FLWOR -->
<root/>', 'true_false', 'Answer the question about XQuery FLWOR.', '<!-- XQuery FLWOR -->
<root/>', '<!-- XQuery FLWOR -->
<root/>', 'Review the documentation for XQuery FLWOR.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 82, 'XML Mastery 2', 'Mastering XQuery for distinguishes expert XML developers.', '<!-- Advanced: XQuery for -->
<root/>', 'complete_code', 'Answer the question about XQuery for.', '<!-- XQuery for -->
<root/>', '<!-- XQuery for -->
<root/>', 'Review the documentation for XQuery for.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 83, 'XML Mastery 3', 'Mastering XQuery let distinguishes expert XML developers.', '<!-- Advanced: XQuery let -->
<root/>', 'true_false', 'Answer the question about XQuery let.', '<!-- XQuery let -->
<root/>', '<!-- XQuery let -->
<root/>', 'Review the documentation for XQuery let.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 84, 'XML Mastery 4', 'Mastering XQuery where distinguishes expert XML developers.', '<!-- Advanced: XQuery where -->
<root/>', 'complete_code', 'Answer the question about XQuery where.', '<!-- XQuery where -->
<root/>', '<!-- XQuery where -->
<root/>', 'Review the documentation for XQuery where.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 85, 'XML Mastery 5', 'Mastering XQuery order by distinguishes expert XML developers.', '<!-- Advanced: XQuery order by -->
<root/>', 'true_false', 'Answer the question about XQuery order by.', '<!-- XQuery order by -->
<root/>', '<!-- XQuery order by -->
<root/>', 'Review the documentation for XQuery order by.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 86, 'XML Mastery 6', 'Mastering XQuery return distinguishes expert XML developers.', '<!-- Advanced: XQuery return -->
<root/>', 'complete_code', 'Answer the question about XQuery return.', '<!-- XQuery return -->
<root/>', '<!-- XQuery return -->
<root/>', 'Review the documentation for XQuery return.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 87, 'XML Mastery 7', 'Mastering XQuery Functions distinguishes expert XML developers.', '<!-- Advanced: XQuery Functions -->
<root/>', 'true_false', 'Answer the question about XQuery Functions.', '<!-- XQuery Functions -->
<root/>', '<!-- XQuery Functions -->
<root/>', 'Review the documentation for XQuery Functions.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 88, 'XML Mastery 8', 'Mastering XQuery Sequences distinguishes expert XML developers.', '<!-- Advanced: XQuery Sequences -->
<root/>', 'complete_code', 'Answer the question about XQuery Sequences.', '<!-- XQuery Sequences -->
<root/>', '<!-- XQuery Sequences -->
<root/>', 'Review the documentation for XQuery Sequences.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 89, 'XML Mastery 9', 'Mastering XQuery Types distinguishes expert XML developers.', '<!-- Advanced: XQuery Types -->
<root/>', 'true_false', 'Answer the question about XQuery Types.', '<!-- XQuery Types -->
<root/>', '<!-- XQuery Types -->
<root/>', 'Review the documentation for XQuery Types.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 90, 'XML Mastery 10', 'Mastering XQuery FLWOR Examples distinguishes expert XML developers.', '<!-- Advanced: XQuery FLWOR Examples -->
<root/>', 'complete_code', 'Answer the question about XQuery FLWOR Examples.', '<!-- XQuery FLWOR Examples -->
<root/>', '<!-- XQuery FLWOR Examples -->
<root/>', 'Review the documentation for XQuery FLWOR Examples.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 91, 'XML Mastery 11', 'Mastering XPath 2.0 distinguishes expert XML developers.', '<!-- Advanced: XPath 2.0 -->
<root/>', 'true_false', 'Answer the question about XPath 2.0.', '<!-- XPath 2.0 -->
<root/>', '<!-- XPath 2.0 -->
<root/>', 'Review the documentation for XPath 2.0.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 92, 'XML Mastery 12', 'Mastering XPath 3.0 distinguishes expert XML developers.', '<!-- Advanced: XPath 3.0 -->
<root/>', 'complete_code', 'Answer the question about XPath 3.0.', '<!-- XPath 3.0 -->
<root/>', '<!-- XPath 3.0 -->
<root/>', 'Review the documentation for XPath 3.0.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 93, 'XML Mastery 13', 'Mastering XML Databases distinguishes expert XML developers.', '<!-- Advanced: XML Databases -->
<root/>', 'true_false', 'Answer the question about XML Databases.', '<!-- XML Databases -->
<root/>', '<!-- XML Databases -->
<root/>', 'Review the documentation for XML Databases.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 94, 'XML Mastery 14', 'Mastering eXist-db distinguishes expert XML developers.', '<!-- Advanced: eXist-db -->
<root/>', 'complete_code', 'Answer the question about eXist-db.', '<!-- eXist-db -->
<root/>', '<!-- eXist-db -->
<root/>', 'Review the documentation for eXist-db.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 95, 'XML Mastery 15', 'Mastering BaseX distinguishes expert XML developers.', '<!-- Advanced: BaseX -->
<root/>', 'true_false', 'Answer the question about BaseX.', '<!-- BaseX -->
<root/>', '<!-- BaseX -->
<root/>', 'Review the documentation for BaseX.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 96, 'XML Mastery 16', 'Mastering MarkLogic distinguishes expert XML developers.', '<!-- Advanced: MarkLogic -->
<root/>', 'complete_code', 'Answer the question about MarkLogic.', '<!-- MarkLogic -->
<root/>', '<!-- MarkLogic -->
<root/>', 'Review the documentation for MarkLogic.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 97, 'XML Mastery 17', 'Mastering XML Performance distinguishes expert XML developers.', '<!-- Advanced: XML Performance -->
<root/>', 'true_false', 'Answer the question about XML Performance.', '<!-- XML Performance -->
<root/>', '<!-- XML Performance -->
<root/>', 'Review the documentation for XML Performance.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 98, 'XML Mastery 18', 'Mastering XML Indexing distinguishes expert XML developers.', '<!-- Advanced: XML Indexing -->
<root/>', 'complete_code', 'Answer the question about XML Indexing.', '<!-- XML Indexing -->
<root/>', '<!-- XML Indexing -->
<root/>', 'Review the documentation for XML Indexing.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 99, 'XML Mastery 19', 'Mastering XML Security distinguishes expert XML developers.', '<!-- Advanced: XML Security -->
<root/>', 'true_false', 'Answer the question about XML Security.', '<!-- XML Security -->
<root/>', '<!-- XML Security -->
<root/>', 'Review the documentation for XML Security.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('xml', 100, 'XML Mastery 20', 'Mastering XML Best Practices distinguishes expert XML developers.', '<!-- Advanced: XML Best Practices -->
<root/>', 'complete_code', 'Answer the question about XML Best Practices.', '<!-- XML Best Practices -->
<root/>', '<!-- XML Best Practices -->
<root/>', 'Review the documentation for XML Best Practices.', 150, 'hard', 1);