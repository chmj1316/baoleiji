<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>{{$title}}</title>
<meta name="generator" content="editplus">
<meta name="author" content="nuttycoder">
<link href="{{$template_root}}/all_purpose_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{{$template_root}}/Calendarandtime.js"></script>
</head>

<body>
 <FORM name="f1" onSubmit="return check()" action="admin.php?controller=admin_pro&action=servergroup_selgroup_save" 
            method="post">

              <TABLE width="100%" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0" valign="top"  class="BBtable">
                <TBODY>
                  <TR bgcolor="#f7f7f7">
                    <TD colspan="2" class="list_bg">设置</TD>
                  </TR>
                  <TR id="autosutr" bgcolor="#f7f7f7">
                    <TD width="50%" align="right">{{$language.WeekTimepolicy}}</TD>
                    <TD><SELECT name="weektime" class="wbk">
                     <OPTION value="">{{$language.no}}</OPTION>
                     	{{section name=k loop=$weektime}}
				<option value="{{$weektime[k].policyname}}" {{if $weektime[k].policyname == $lgroup.weektime}}selected{{/if}}>{{$weektime[k].policyname}}</option>
			{{/section}}
                      </SELECT>                   </TD>
                  </TR>
                  <TR id="autosutr">
                    <TD width="50%" align="right">{{$language.SourceIPGroup}}</TD>
                    <TD><select  class="wbk"  name=sourceip>
                      <OPTION value="">{{$language.no}}</OPTION>
                     	{{section name=t loop=$sourceip}}
				<option value="{{$sourceip[t].groupname}}" {{if $sourceip[t].groupname == $lgroup.sourceip}}selected{{/if}}>{{$sourceip[t].groupname}}</option>
			{{/section}}
                  </SELECT>  </TD>
                  </TR>
                  <TR id="autosutr" bgcolor="#f7f7f7">
                    <TD width="50%" align="right">命令权限</TD>
                    <TD><select  class="wbk"  name=forbidden_commands_groups>
                      <OPTION value="">{{$language.no}}</OPTION>
                     	{{section name=f loop=$allforbiddengroup}}
				<option value="{{$allforbiddengroup[f].gname}}" {{if $allforbiddengroup[f].gname == $lgroup.forbidden_commands_groups}}selected{{/if}}>{{$allforbiddengroup[f].gname}}({{if $allforbiddengroup[f].black_or_white eq 1}}白名单{{elseif $allforbiddengroup[f].black_or_white eq 3}}授权命令{{else}}黑名单{{/if}})</option>
			{{/section}}
                  </SELECT>     </TD>
                  </TR>
                              
                  <TR>
                    <TD colspan="2" align="center"><INPUT class="an_02" type="submit" value="保存修改"></TD>
                  </TR>
                </TBODY>
              </TABLE>
      <input type="hidden" name="id" value="{{$id}}" />
<input type="hidden" name="gid" value="{{$gid}}" />
<input type="hidden" name="sid" value="{{$sid}}" />
<input type="hidden" name="sessionlgroup" value="{{$sessionlgroup}}" />
</FORM>

</body>
<iframe name="hide" height="0" frameborder="0" scrolling="no"></iframe>
</html>


