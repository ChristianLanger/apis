<p><@s.text name="manage.resource.create.intro"/></p>

<@s.form cssClass="topForm half" action="create.do" method="post" enctype="multipart/form-data" namespace="" includeContext="false">
  <@input name="shortname" i18nkey="resource.shortname" errorfield="resource.shortname" size=40/>
  <!-- <@select name="resourceType" i18nkey="manage.resource.create.coreType" help="i18n" options=types value="" /> -->
  
  <!-- <div>
	  <@s.fielderror cssClass="fielderror" fieldName="file"/>
	  <label for="file"><@s.text name="manage.resource.create.file"/>: </label>
    <@s.file name="file" key="manage.resource.create.file" />
  </div> -->

  <div id="create-button" class="buttons">
    <#if (organisations?size>0) >
      <@s.submit cssClass="button btn btn-default" name="create" key="button.create"/>
    <#else>
      <!-- Disable create button and show warning: must be at least one organization able to host -->
      <@s.submit cssClass="button btn btn-default" name="create" key="button.create" disabled="true"/>
      <i class="infoImg fa fa-exclamation-triangle"> </i>
      <div class="info autop">
        <@s.text name="manage.resource.create.forbidden"/>
      </div>
    </#if>

  </div>

</@s.form>
