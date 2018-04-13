<#-- @ftlvariable name="self" type="com.tallence.formeditor.contentbeans.FormEditor" -->

<#-- TODO if you use an svg sprite, integrate this svg in it. Otherwise it can be moved to the head. -->
<div style="display: none">
    <#-- used for the hint-icon which might be used for form elements -->
    <svg id="info" viewBox="0 0 490 490" width="100%" height="100%"><path d="M245 490C109.9 490 0 380.1 0 245S109.9 0 245 0s245 109.9 245 245-109.9 245-245 245zm0-428C144.1 62 62 144.1 62 245s82.1 183 183 183 183-82.1 183-183S345.9 62 245 62z"></path><circle cx="241.3" cy="159.2" r="29.1"></circle><path d="M285.1 359.9h-80.2V321h14.7v-66.2h-14.5v-38.9h65.3V321h14.7z"></path></svg>
</div>

<#assign formElements=form.parseFormElements(self)/>
<#assign link=cm.getLink(self, "formEditorSubmit") />

<form action="${link}" class="form" method="post" enctype="multipart/form-data">
    <div class="container">
        <#list formElements as element>
            <@cm.include self=element/>
        </#list>
        <button class="btn btn-primary">Form submit</button>
    </div>
</form>
