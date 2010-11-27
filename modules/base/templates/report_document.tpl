<?php if ($dimension_properties): ?>
<div class="owa_reportSectionContent">
	<?php echo $this->renderDimension($dimension_template, $dimension_properties);?>
</div>
<?php endif;?>

<?php require('report_trend_section.php');?>
	
<div class="owa_reportSectionContent">
	<table>
		<TR>
			
			<TD width="" valign="top">
				<div class="owa_reportSectionHeader">Related Reports:</div>
				
				<P>
					<span class="inline_h3"><a href="<?php echo $this->makeLink(array('do' => 'base.overlayLauncher', 'document_id' =>$document->get('id'), 'overlay_params' => urlencode($this->makeParamString(array('action' => 'loadHeatmap', 'document_id' => $document->get('id')), true, 'cookie'))));?>" target="_blank">Heatmap Overlay</a></span> (Firefox 3.5+ required)
				</P>
				
				<P>
					<span class="inline_h3"><a href="<?php echo $this->makeLink(array('do' => 'base.reportDomstreams', 'document_id' => $document->get('id')), true);?>">Domstreams</a></span> - mouse movement recordings.
				</P>
				
				<P>
					<span class="inline_h3"><a href="<?php echo $this->makeLink(array('do' => 'base.reportDomClicks', 'document_id' => $document->get('id')), true);?>">Dom Clicks</a></span> - analysis of dom clicks.
				</P>
				
					
			</TD>
		</TR>
	</table>	
</div>

<?php require_once('js_report_templates.php');?>