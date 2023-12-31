<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Information</title>
      </head>
      <body>
        <h1>Employee Information</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Position</th>
            <th>Salary</th>
            <th>Email</th>
            <th>Phone Number</th>
          </tr>
          <xsl:for-each select="employees/employee">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="personal_information/first_name"/></td>
              <td><xsl:value-of select="personal_information/last_name"/></td>
              <td><xsl:value-of select="personal_information/date_of_birth"/></td>
              <td><xsl:value-of select="personal_information/gender"/></td>
              <td><xsl:value-of select="employment_information/position"/></td>
              <td><xsl:value-of select="employment_information/salary"/></td>
              <td><xsl:value-of select="contact_information/email"/></td>
              <td><xsl:value-of select="contact_information/phone_number"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
