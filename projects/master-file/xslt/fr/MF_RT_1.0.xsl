<?xml version="1.0" encoding="utf-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xsl:param name="language" select="'eng'"/>
  <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
  <xsl:decimal-format name="FrenchDecimalFormat" decimal-separator="," grouping-separator="&#160;"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="X-UA-Compatible" content="IE=9"/>
        <style type="text/css">
<xsl:text disable-output-escaping="yes">
html {
    font-family: sans-serif;
	font-size: 10px;
    -webkit-tap-highlight-color: transparent
    display: block;
    color: -internal-root-color;
}

body {
	background: #f9f9f9;
    line-height: 1.4375;
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    font-size: 16px;
    margin: 0;
}
, :after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.well {
    min-height: 20px;
    padding: 19px;
    margin-bottom: 20px;
    background-color: #f5f5f5;
    border: 1px solid #e3e3e3;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05)
}

.well blockquote {
    border-color: #ddd;
    border-color: rgba(0, 0, 0, .15)
}

.well-lg {
    padding: 24px;
    border-radius: 6px
}

.well-sm {
    padding: 9px;
    border-radius: 3px
}
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block
}
.panel {
    margin-bottom: 23px;
    background-color: #fff;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05)
}

.panel-body {
    padding: 15px
}

.panel-body:after, .panel-body:before {
    content: " ";
    display: table
}

.panel-body:after {
    clear: both
}

.panel-heading {
    padding: 10px 15px;
    border-bottom: 1px solid transparent;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px
}

.panel-heading .dropdown .dropdown-toggle {
    color: inherit
}

.panel-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 18px;
    color: inherit
}

.panel-title a {
    color: inherit
}

.panel-footer {
    padding: 10px 15px;
    background-color: #f5f5f5;
    border-top: 1px solid #ddd;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px
}

.panel .list-group, .panel .panel-collapse .list-group {
    margin-bottom: 0
}

.panel .list-group .list-group-item, .panel .panel-collapse .list-group .list-group-item {
    border-width: 1px 0;
    border-radius: 0
}

.panel .list-group:first-child .list-group-item:first-child, .panel .panel-collapse .list-group:first-child .list-group-item:first-child {
    border-top: 0;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px
}

.panel .list-group:last-child .list-group-item:last-child, .panel .panel-collapse .list-group:last-child .list-group-item:last-child {
    border-bottom: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px
}
.panel-default {
    border-color: #ddd
}
.panel-default .panel-heading {
    color: #333;
    background-color: #f5f5f5;
    border-color: #ddd
}

.panel-default  .panel-heading + .panel-collapse .panel-body {
    border-top-color: #ddd
}

.panel-default  .panel-heading .badge {
    color: #f5f5f5;
    background-color: #333
}

.panel-default  .panel-footer + .panel-collapse .panel-body {
    border-bottom-color: #ddd
}
.panel-primary {
    border-color: #2572b4
}
.panel-primary  .panel-heading {
    color: #fff;
    background-color: #2572b4;
    border-color: #2572b4
}

.panel-primary  .panel-heading + .panel-collapse .panel-body {
    border-top-color: #2572b4
}

.panel-primary  .panel-heading .badge {
    color: #2572b4;
    background-color: #fff
}

.panel-primary  .panel-footer + .panel-collapse .panel-body {
    border-bottom-color: #2572b4
}
.panel-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 18px;
    color: inherit
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    font-family: Helvetica, Arial, sans-serif
}
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    font-weight: 700;
}
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    line-height: 1.1;
    color: inherit;
}
h1 {
    margin: .67em 0;
}

h1 {
    border-bottom: 1px solid #af3c43;
    font-size: 34px;
    margin-bottom: .2em;
    margin-top: 1.25em;
    padding-bottom: .2em
}
table {
    background-color: transparent;
    display: table;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
.table tbody tr td, .table tbody tr th, .table tfoot tr td, .table tfoot tr th, .table thead tr td, .table thead tr th {
    padding: 8px;
    line-height: 1.4375;
    vertical-align: top;
    border-top: 1px solid #ddd;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
table.dataTable, table.dataTable td, table.dataTable th {
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
td, th {
    padding: 0
}
table.dataTable {
    border-collapse: separate;
    border-spacing: 0;
    margin: 0 auto;
    width: 100% !important;
}
table.dataTable, table.dataTable td, table.dataTable th {
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
.panel .table-responsive:last-child .table:last-child, .panel .table:last-child {
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
}
.dataTables_wrapper .dataTables_scroll, table.dataTable {
    clear: both;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.table-striped tbody tr:nth-child(odd) {
    background-color: #f5f5f5;
}
table.dataTable tbody tr {
    background-color: #fff;
}
.row {
    margin-left: -15px;
    margin-right: 15px;
}

.row:after, .row:before {
    content: " ";
    display: table
}

.row:after {
    clear: both
}
.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
}

.col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
    float: left;
}

.col-xs-12 {
    width: 100%;
}
.col-md-12 {
	width: 100%;
}
.col-xs-6 {
    width: 48%;
}
.col-md-5 {
    width: 40%;
}
.col-xs-2 {
    width: 16.6666666667%;
}
.col-xs-1 {
    width: 8.3333333333%
}
.col-xs-11 {
    width: 91.6666666667%
}
.col-xs-7 {
    width: 52%;
}

legend {
    padding-inline-start: 2px;
    padding-inline-end: 2px;
    display: block;
    width: 100%;
    padding: 0;
    margin-bottom: 23px;
    font-size: 24px;
    line-height: inherit;
    color: #333;
    border: 0;
    border-bottom: 0;
    float: left;
}
.form-group {
    margin-bottom: 15px;
}
.col-md-6 {
    width: 48%;
}
.col-xs-3 {
    width: 25%;
}
.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
    float: left;
}
.alert-info, .label-info, .label-info[href]:active, .label-info[href]:focus, .label-info[href]:hover, details.alert.alert-info, details.alert[open].alert-info
 {
    background: #d7faff;
    border-color: #269abc;
}
.alert-danger, .alert-info, .alert-success, .alert-warning, .label-danger, .label-danger[href]:active, .label-danger[href]:focus, .label-danger[href]:hover, .label-default, .label-default[href]:active, .label-default[href]:focus, .label-default[href]:hover, .label-info, .label-info[href]:active, .label-info[href]:focus, .label-info[href]:hover, .label-primary, .label-primary[href]:active, .label-primary[href]:focus, .label-primary[href]:hover, .label-success, .label-success[href]:active, .label-success[href]:focus, .label-success[href]:hover, .label-warning, .label-warning[href]:active, .label-warning[href]:focus, .label-warning[href]:hover {
    color: #000;
}
.alert-warning, .label-warning, .label-warning[href]:active, .label-warning[href]:focus, .label-warning[href]:hover, details.alert.alert-warning, details.alert[open].alert-warning {
    background: #f9f4d4;
    border-color: #f90;
}
.alert-success, .label-success, .label-success[href]:active, .label-success[href]:focus, .label-success[href]:hover, details.alert.alert-success, details.alert[open].alert-success {
    background: #d8eeca;
    border-color: #278400;
}
.alert, .label {
    border-radius: 0;
    border-style: solid;
    border-width: 0 0 0 4px;
}
.alert {
    padding: 15px;
    margin-bottom: 23px;
    border: 1px solid transparent;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
ol, ul {
    margin-top: 0;
    margin-bottom: 11.5px;
}
span.mouseHover:hover {
	border: 1px solid black;
}
.c-checkbox {
	border-style: solid;
	border-width: thin;
	font-size: xx-small;
	font-weight: 900;
	margin-left: 15px;
	margin-right: 15px;
	padding-left: 2px;
	vertical-align: 2px;
}
span.normalWeight {
	font-weight: 100;
}
.padLeft3 {
	padding-left: 3px;
}
.nowrap {
	white-space: nowrap;
}
.lst-lwr-alph {
  list-style-type: lower-alpha; }
.minWidth150 {
	min-width: 150px;
}
.minWidth300 {
	min-width: 300px;
}
</xsl:text>
        </style>
      </head>
      <body>
        <xsl:if test="count(TRANSACTION_ENROL) &gt; 0">
          <xsl:apply-templates select="TRANSACTION_ENROL"></xsl:apply-templates>
        </xsl:if>
      </body>
    </html>
  </xsl:template>

  <!-- Transaction Enrolment -->
  <xsl:template match="TRANSACTION_ENROL">
    <h1>Formulaire de demande de fiches maîtresses
      <xsl:if test="software_version != ''">(Version: <xsl:value-of select="software_version"/>)
      </xsl:if>
    </h1>
    <div class="well well-sm">
      <table border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
        <tr>
          <th style="text-align: center;font-weight:bold;">Numéro de dossier</th>
          <th style="text-align: center;font-weight:bold;">Date de la derni&#232;re enregistrement</th>
        </tr>
        <tr>
          <td style="text-align: center;">
            <span class="mouseHover">
              <xsl:value-of select="ectd/dossier_id"/>
            </span>
          </td>
          <td style="text-align: center;">
            <span class="mouseHover">
              <xsl:value-of select="substring(date_saved, 1, 10)"/>
            </span>
          </td>
        </tr>
      </table>
    </div>
    <section class="panel panel-primary mrgn-tp-lg">
      <header class="panel-heading clearfix">
        <h3 class="panel-title">Information réglementaire</h3>
      </header>
      <div class="panel-body">
        <div class="row">
          <div class="col-xs-12">
            <strong>Nom de la fiche maîtresse:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="ectd/product_name"/>
            </span>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <strong>Numéro de fiche maîtresse:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="ectd/lifecycle_record/master_file_number"/>
            </span>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <strong>Type de la fiche maîtresse:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="ectd/lifecycle_record/regulatory_activity_type"/>
            </span>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <strong>Usage du fiche maîtresse:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="ectd/lifecycle_record/master_file_use"/>
            </span>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <strong>Description de la transaction:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="ectd/lifecycle_record/sequence_description_value"/>
            </span>
          </div>
        </div>
        <div class="row">
          <xsl:if test="ectd/lifecycle_record/sequence_from_date !=''">
            <div class="col-xs-6">
              <strong>Date:&#160;</strong>
              <span class="mouseHover normalWeight">
                <xsl:value-of select="ectd/lifecycle_record/sequence_from_date"/>
              </span>
            </div>
          </xsl:if>
          <xsl:if test="ectd/lifecycle_record/requester_of_solicited_information !=''">
            <div class="col-xs-6">
              <strong>Requester of solicited information:&#160;</strong>
              <span class="mouseHover normalWeight">
                <xsl:value-of select="ectd/lifecycle_record/requester_of_solicited_information"/>
              </span>
            </div>
          </xsl:if>
        </div>
      </div>
    </section>

    <section class="panel panel-primary mrgn-tp-lg">
      <header class="panel-heading clearfix">
        <h3 class="panel-title">Coordonnées</h3>
      </header>
      <div class="panel-body">
        <section class="panel  panel-default">
          <header class="panel-heading clearfix">
            <h3 class="panel-title">Nom et adresse du propriétaire de la fiche maîtresse</h3>
          </header>
          <div class="panel-body">
            <xsl:call-template name="nameAddress">
              <xsl:with-param name="value" select="holder_name_address"/>
            </xsl:call-template>
          </div>
        </section>
        <section class="panel  panel-default">
          <header class="panel-heading clearfix">
            <h3 class="panel-title">Coordonnées du propriétaire de la fiche maîtresse</h3>
          </header>
          <div class="panel-body">
            <xsl:call-template name="contact">
              <xsl:with-param name="value" select="holder_contact"/>
            </xsl:call-template>
          </div>
        </section>
        <section class="panel  panel-default">
          <header class="panel-heading clearfix">
            <h3 class="panel-title">Nom et adresse de l’agent autorisé ou du tiers au nom du titulaire</h3>
          </header>
          <div class="panel-body">
            <xsl:call-template name="nameAddress">
              <xsl:with-param name="value" select="agent_name_address"/>
            </xsl:call-template>
          </div>
        </section>
        <section class="panel  panel-default">
          <header class="panel-heading clearfix">
            <h3 class="panel-title">Coordonnées de l’agent autorisé ou du tiers au nom du titulaire</h3>
          </header>
          <div class="panel-body">
            <xsl:call-template name="contact">
              <xsl:with-param name="value" select="agent_contact"/>
            </xsl:call-template>
          </div>
        </section>
        <div class="row">
          <div class="col-xs-12">
            <strong>
              <xsl:call-template name="hp-checkbox">
                <xsl:with-param name="value" select="contact_info_confirm"/>
              </xsl:call-template>
              <span class="mouseHover normalWeight">J’atteste que les informations ci-dessus sont valides
              </span>
            </strong>
          </div>
        </div>
      </div>
    </section>
    <section class="panel panel-primary mrgn-tp-lg">
      <header class="panel-heading clearfix">
        <h3 class="panel-title">Frais liés à la fiche maîtresse</h3>
      </header>
      <div class="panel-body">
        <div class="row">
          <div class="col-xs-12">
            <strong>Joignez-vous une ou plusieurs lettres d’accès à cette transaction? &#160;</strong>
            <xsl:call-template name="YesNoUnknow">
              <xsl:with-param name="value" select="fee_details/are_there_access_letters"/>
            </xsl:call-template>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <strong>Nombre de lettre(s) d’accès: &#160;</strong>
            <xsl:value-of select="fee_details/number_of_access_letters"/>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <strong>Qui paiera les frais? &#160;</strong>
            <xsl:choose>
              <xsl:when test=" 'AuthorizedMasterFileAgent' = fee_details/who_responsible_fee">
                Agent autorisé de la fiche maîtresse / Tiers au nom du titulaire autorisé
              </xsl:when>
              <xsl:when test=" 'MasterFileHolder' = fee_details/who_responsible_fee">
                de la fiche maîtresse
              </xsl:when>
            </xsl:choose>
          </div>
        </div>
        <div class="row">
          <xsl:if test="fee_details/account_number != ''">
            <div class="col-xs-6">
              <strong>Numéro de compte du client (si émis):&#160;</strong>
              <span class="mouseHover normalWeight">
                <xsl:value-of select="fee_details/account_number"/>
              </span>
            </div>
          </xsl:if>
          <xsl:if test="fee_details/cra_business_number != ''">
            <div class="col-xs-6">
              <strong>Numéro d’entreprise de l'Agence du revenu du Canada (le cas échéant):&#160;</strong>
              <span class="mouseHover normalWeight">
                <xsl:value-of select="fee_details/cra_business_number"/>
              </span>
            </div>
          </xsl:if>
        </div>
      </div>
    </section>
    <section class="panel panel-primary mrgn-tp-lg">
      <header class="panel-heading clearfix">
        <h3 class="panel-title">Certification</h3>
      </header>
      <div class="panel-body">
        <div class="row">
          <strong>
            <xsl:call-template name="hp-checkbox">
              <xsl:with-param name="value" select="certify_accurate_complete"/>
            </xsl:call-template>
            <span class="mouseHover normalWeight">Je certifie que les informations et le matériel contenus dans cette
              demande/transaction de la fiche maîtresse sont exacts et complets.
            </span>
          </strong>
        </div>
        <div class="row">
          <div class="col-xs-6">
            <strong>Nom complet:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="full_name"/>
            </span>
          </div>
          <div class="col-xs-6">
            <strong>Date:&#160;</strong>
            <span class="mouseHover normalWeight">
              <xsl:value-of select="submit_date"/>
            </span>
          </div>
        </div>

      </div>
    </section>
  </xsl:template>

  <xsl:template name="break">
    <xsl:param name="text" select="string(.)"/>
    <xsl:choose>
      <xsl:when test="contains($text, '&#xa;')">
        <xsl:value-of select="substring-before($text, '&#xa;')"/>
        <br/>
        <xsl:call-template name="break">
          <xsl:with-param name="text" select="substring-after($text, '&#xa;')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="YesNoUnknow">
    <xsl:param name="value" select="/.."/>
    <xsl:choose>
      <xsl:when test="$value = 'Y'">
        <xsl:value-of select="'Oui'"/>
      </xsl:when>
      <xsl:when test="$value = 'N'">
        <xsl:value-of select="'Non'"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="'Non déterminé'"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="hp-checkbox">
    <xsl:param name="value" select="/.."/>
    <span class="c-checkbox">
      <xsl:choose>
        <xsl:when
          test="translate($value, $smallcase, $uppercase) = 'Y' or translate($value, $smallcase, $uppercase) = 'TRUE'">
          X
        </xsl:when>
        <xsl:otherwise>
          &#160;&#160;
        </xsl:otherwise>
      </xsl:choose>
    </span>
  </xsl:template>

  <xsl:template name="CapitalFirstLetter">
    <xsl:param name="value" select="/.."/>
    <xsl:value-of select="translate(substring($value,1,1), $smallcase, $uppercase)"/>
    <xsl:value-of select="translate(substring($value,2), $uppercase, $smallcase)"/>
  </xsl:template>
  <xsl:template name="converter">
    <xsl:param name="value" select="/.."/>
    <xsl:choose>
      <xsl:when test=" 'en' = $value">
        <xsl:value-of select="'English'"/>
      </xsl:when>
      <xsl:when test=" 'fr' = $value">
        <xsl:value-of select="'French'"/>
      </xsl:when>
      <xsl:when test=" 'SALUT_MR' = $value">
        <xsl:value-of select="'Mr.'"/>
      </xsl:when>
      <xsl:when test=" 'SALUT_MS' = $value">
        <xsl:value-of select="'Ms.'"/>
      </xsl:when>
      <xsl:when test=" 'SALUT_DR' = $value">
        <xsl:value-of select="'Dr.'"/>
      </xsl:when>
      <xsl:when test=" 'SALUT_MRS' = $value">
        <xsl:value-of select="'Mrs.'"/>
      </xsl:when>
      <xsl:when test=" 'AB' = $value">
        <xsl:value-of select="'Alberta'"/>
      </xsl:when>
      <xsl:when test=" 'BC' = $value">
        <xsl:value-of select="'Columbie Britannique'"/>
      </xsl:when>
      <xsl:when test=" 'MB' = $value">
        <xsl:value-of select="'Manitoba'"/>
      </xsl:when>
      <xsl:when test=" 'NB' = $value">
        <xsl:value-of select="'Nouveau Brunswick'"/>
      </xsl:when>
      <xsl:when test=" 'NL' = $value">
        <xsl:value-of select="'Terre Neuve et Labrador'"/>
      </xsl:when>
      <xsl:when test=" 'NT' = $value">
        <xsl:value-of select="'Territoires du Nord-Ouest'"/>
      </xsl:when>
      <xsl:when test=" 'NS' = $value">
        <xsl:value-of select="'Nouvelle &#201;cosse'"/>
      </xsl:when>
      <xsl:when test=" 'NU' = $value">
        <xsl:value-of select="'Nunavut'"/>
      </xsl:when>
      <xsl:when test=" 'ON' = $value">
        <xsl:value-of select="'Ontario'"/>
      </xsl:when>
      <xsl:when test=" 'PE' = $value">
        <xsl:value-of select="'Isle du Prince &#201;douard'"/>
      </xsl:when>
      <xsl:when test=" 'QC' = $value">
        <xsl:value-of select="'Qu&#233;bec'"/>
      </xsl:when>
      <xsl:when test=" 'SK' = $value">
        <xsl:value-of select="'Saskatchewan'"/>
      </xsl:when>
      <xsl:when test=" 'YT' = $value">
        <xsl:value-of select="'Yukon'"/>
      </xsl:when>
      <xsl:when test=" 'AL' = $value">
        <xsl:value-of select="'Alabama'"/>
      </xsl:when>
      <xsl:when test=" 'AK' = $value">
        <xsl:value-of select="'Alaska'"/>
      </xsl:when>
      <xsl:when test=" 'AZ' = $value">
        <xsl:value-of select="'Arizona'"/>
      </xsl:when>
      <xsl:when test=" 'AR' = $value">
        <xsl:value-of select="'Arkansas'"/>
      </xsl:when>
      <xsl:when test=" 'CA' = $value">
        <xsl:value-of select="'California'"/>
      </xsl:when>
      <xsl:when test=" 'CO' = $value">
        <xsl:value-of select="'Colorado'"/>
      </xsl:when>
      <xsl:when test=" 'CT' = $value">
        <xsl:value-of select="'Connecticut'"/>
      </xsl:when>
      <xsl:when test=" 'DE' = $value">
        <xsl:value-of select="'Delaware'"/>
      </xsl:when>
      <xsl:when test=" 'FL' = $value">
        <xsl:value-of select="'Florida'"/>
      </xsl:when>
      <xsl:when test=" 'GA' = $value">
        <xsl:value-of select="'Georgia'"/>
      </xsl:when>
      <xsl:when test=" 'HI' = $value">
        <xsl:value-of select="'Hawaii'"/>
      </xsl:when>
      <xsl:when test=" 'ID' = $value">
        <xsl:value-of select="'Idaho'"/>
      </xsl:when>
      <xsl:when test=" 'IL' = $value">
        <xsl:value-of select="'Illinois'"/>
      </xsl:when>
      <xsl:when test=" 'IN' = $value">
        <xsl:value-of select="'Indiana'"/>
      </xsl:when>
      <xsl:when test=" 'IA' = $value">
        <xsl:value-of select="'Iowa'"/>
      </xsl:when>
      <xsl:when test=" 'KS' = $value">
        <xsl:value-of select="'Kansas'"/>
      </xsl:when>
      <xsl:when test=" 'KY' = $value">
        <xsl:value-of select="'Kentucky'"/>
      </xsl:when>
      <xsl:when test=" 'LA' = $value">
        <xsl:value-of select="'Louisiana'"/>
      </xsl:when>
      <xsl:when test=" 'ME' = $value">
        <xsl:value-of select="'Maine'"/>
      </xsl:when>
      <xsl:when test=" 'MD' = $value">
        <xsl:value-of select="'Maryland'"/>
      </xsl:when>
      <xsl:when test=" 'MA' = $value">
        <xsl:value-of select="'Massachusetts'"/>
      </xsl:when>
      <xsl:when test=" 'MI' = $value">
        <xsl:value-of select="'Michigan'"/>
      </xsl:when>
      <xsl:when test=" 'MN' = $value">
        <xsl:value-of select="'Minnesota'"/>
      </xsl:when>
      <xsl:when test=" 'MS' = $value">
        <xsl:value-of select="'Mississippi'"/>
      </xsl:when>
      <xsl:when test=" 'MO' = $value">
        <xsl:value-of select="'Missouri'"/>
      </xsl:when>
      <xsl:when test=" 'MT' = $value">
        <xsl:value-of select="'Montana'"/>
      </xsl:when>
      <xsl:when test=" 'NE' = $value">
        <xsl:value-of select="'Nebraska'"/>
      </xsl:when>
      <xsl:when test=" 'NV' = $value">
        <xsl:value-of select="'Nevada'"/>
      </xsl:when>
      <xsl:when test=" 'NH' = $value">
        <xsl:value-of select="'New Hampshire'"/>
      </xsl:when>
      <xsl:when test=" 'NJ' = $value">
        <xsl:value-of select="'New Jersey'"/>
      </xsl:when>
      <xsl:when test=" 'NM' = $value">
        <xsl:value-of select="'New Mexico'"/>
      </xsl:when>
      <xsl:when test=" 'NY' = $value">
        <xsl:value-of select="'New York'"/>
      </xsl:when>
      <xsl:when test=" 'NC' = $value">
        <xsl:value-of select="'North Carolina'"/>
      </xsl:when>
      <xsl:when test=" 'ND' = $value">
        <xsl:value-of select="'North Dakota'"/>
      </xsl:when>
      <xsl:when test=" 'OH' = $value">
        <xsl:value-of select="'Ohio'"/>
      </xsl:when>
      <xsl:when test=" 'OK' = $value">
        <xsl:value-of select="'Oklahoma'"/>
      </xsl:when>
      <xsl:when test=" 'OR' = $value">
        <xsl:value-of select="'Oregon'"/>
      </xsl:when>
      <xsl:when test=" 'PA' = $value">
        <xsl:value-of select="'Pennsylvania'"/>
      </xsl:when>
      <xsl:when test=" 'RI' = $value">
        <xsl:value-of select="'Rhode Island'"/>
      </xsl:when>
      <xsl:when test=" 'SC' = $value">
        <xsl:value-of select="'South Carolina'"/>
      </xsl:when>
      <xsl:when test=" 'SD' = $value">
        <xsl:value-of select="'South Dakota'"/>
      </xsl:when>
      <xsl:when test=" 'TN' = $value">
        <xsl:value-of select="'Tennessee'"/>
      </xsl:when>
      <xsl:when test=" 'TX' = $value">
        <xsl:value-of select="'Texas'"/>
      </xsl:when>
      <xsl:when test=" 'UT' = $value">
        <xsl:value-of select="'Utah'"/>
      </xsl:when>
      <xsl:when test=" 'VT' = $value">
        <xsl:value-of select="'Vermont'"/>
      </xsl:when>
      <xsl:when test=" 'VA' = $value">
        <xsl:value-of select="'Virginia'"/>
      </xsl:when>
      <xsl:when test=" 'WA' = $value">
        <xsl:value-of select="'Washington'"/>
      </xsl:when>
      <xsl:when test=" 'WV' = $value">
        <xsl:value-of select="'West Virginia'"/>
      </xsl:when>
      <xsl:when test=" 'WI' = $value">
        <xsl:value-of select="'Wisconsin'"/>
      </xsl:when>
      <xsl:when test=" 'WY' = $value">
        <xsl:value-of select="'Wyoming'"/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="nameAddress">
    <xsl:param name="value" select="/.."/>
    <div class="row">
      <div class="col-xs-12">
        <strong>Nom de la compagnie (nom légal complet):&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/company_name"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12">
        <strong>Rue:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/address"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6">
        <strong>Ville:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/city"/>
        </span>
      </div>
      <div class="col-xs-6">
        <strong>Pays:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/country"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6">
        <strong>Province:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/province_lov"/>
        </span>
      </div>
      <div class="col-xs-6">
        <strong>Code postale:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/postal"/>
        </span>
      </div>
    </div>
  </xsl:template>

  <xsl:template name="contact">
    <xsl:param name="value" select="/.."/>
    <div class="row">
      <div class="col-xs-6">
        <strong>Prénom:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="holder_contact/given_name"/>
        </span>
      </div>
      <div class="col-xs-6">
        <strong>Nom de famille:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/surname"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6">
        <strong>Langue de correspondance:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/language"/>
        </span>
      </div>
      <div class="col-xs-6">
        <strong>Titre:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/job_title"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6">
        <strong>Numéro de téléphone:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/phone_num"/>
        </span>
      </div>
      <div class="col-xs-6">
        <strong>Numéro de l'extension:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/phone_ext"/>
        </span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6">
        <strong>Numéro de fax:&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/fax_num"/>
        </span>
      </div>
      <div class="col-xs-6">
        <strong>Courriel :&#160;</strong>
        <span class="mouseHover normalWeight">
          <xsl:value-of select="$value/email"/>
        </span>
      </div>
    </div>
  </xsl:template>

</xsl:transform>

