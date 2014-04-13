$(document).foundation();
$(function() {
    function sectionToggle(e) {
        var toggle = $(this);
        var associatedSection = $(this).siblings(toggle.attr('href'));
        if (associatedSection.hasClass('active')) {
            associatedSection.stop().slideUp('slow', function() {
                associatedSection.removeClass('active');
                toggle.children('b').removeClass('caret').addClass('right-caret');
            });
        } else {
            toggle.children('b').removeClass('right-caret').addClass('caret');
            associatedSection.stop().slideDown('slow', function() {
                associatedSection.addClass('active');
            });
        }
        e.preventDefault();
    }

    function displaySection($section) {
        if (!$section.hasClass('active')) {
            $section.css('display', 'block');
            $section.addClass('active');
        }
    }

    function addInv() {
       var idReg = /(id="[a-zA-Z0-9-_\/]+)\d+"/g;
        var forReg = /(for="[a-zA-Z0-9-_\/]+)\d+"/g;
        var nameReg = /(name="[a-zA-Z0-9-_\/]+)\d+"/g;
        var count = $(".panel.investigator").length;
        count++;
        //stupid hack needed here
        var target = $(".panel.investigator").first().clone();
        var wrap = $(document.createElement('div'));
        wrap.append(target);
        var s = wrap.html();
        var newStr = s.replace(idReg, function(match, p1) {
            return p1 + count + '"';
        })
        newStr = newStr.replace(forReg, function(match, p1) {
            return p1 + count + '"';
        });
        newStr = newStr.replace(nameReg, function(match, p1) {
            return p1 + count + '"';
        });

        var $buttonDiv = $('#investigator-add').parent();
        var $newElement = $(newStr);
        var $closeButton = $('<img data-tooltip class="has-tip tip-top neg" src="img/neg.png" title="Remove this Investigator">');
        $closeButton.click(delInv).foundation();
        $newElement.find('.neg-place-holder-inv').append($closeButton);
        $newElement.find('#investigator-organization-add').click(function() {
            addOrg.apply(this)
        });
        $newElement.attr('id', 'investigator-' + count + '-section');
        $newElement.find("input[id^=first-name-], input[id^=last-name-]").on('input', alterHeadingInv);
        $newElement.find('.neg-place-holder-org').each(function() {
            delOrg.apply($(this).children('img')[0]);
        });
        // $newElement.find('input').each(function(){
        //     $(this).val('');
        // })
        $newElement.insertBefore($buttonDiv);
        //create toggle
        $newElementToggle = $('<a href="#investigator-' + count + '-section" class="large-12 section-toggle sub-section"><b class="caret"></b>Investigator ' + count + '</a>');
        $newElementToggle.click(sectionToggle).insertBefore($newElement);
        //if toggle is in a collapsed state
        displaySection($newElement);
    }

    function delInv() {
        $panel = $(this).closest(".investigator");
        $('a[href="#' + $panel.attr('id') + '"]').remove();
        $panel.remove();
        removeTootlip.call(this);
    }

    function addRes() {
        var idReg = /(id="[a-zA-Z0-9-_\/]+)\d+"/g;
        var forReg = /(for="[a-zA-Z0-9-_\/]+)\d+"/g;
        var nameReg = /(name="[a-zA-Z0-9-_\/]+)\d+"/g;
        var count = $(".panel.resource").length;
        count++;
        //stupid hack needed here
        var target = $(".panel.resource").first().clone();
        var wrap = $(document.createElement('div'));
        wrap.append(target);
        var s = wrap.html();
        var newStr = s.replace(idReg, function(match, p1) {
            return p1 + count + '"';
        })
        newStr = newStr.replace(forReg, function(match, p1) {
            return p1 + count + '"';
        });
        newStr = newStr.replace(nameReg, function(match, p1) {
            return p1 + count + '"';
        });

        var $buttonDiv = $('#resource-add').parent();
        var $newElement = $(newStr);
        var $closeButton = $('<img data-tooltip class="has-tip tip-top neg" src="img/neg.png" title="Remove this Resource">');
        $closeButton.click(delRes).foundation();
        $newElement.find('select[id^=resource-type-]').change(activateSubType).val('None');
        $newElement.find('select[id^=resource-subtype-]').prop('disabled', true)
            .click(alterSecHeadingRes).change(alterSecHeadingRes)
            .html($('<option value="">Please first choose resource type</option>'))
            .closest('.row').css('display', 'block');
        $newElement.find('input[id^=resource-subtype-text-]')
            .click(alterSecHeadingRes).change(alterSecHeadingRes)
            .closest('.row').css('display', 'none');
        $newElement.find("#resource-organization-site-contact\\/1-" + count).focus(getInvList);
        $newElement.find('.neg-place-holder-res').append($closeButton);
        $newElement.find('#resource-organization-add').click(function() {
            addOrg.call(this, function($newOrgElement, innerID) {
                //innerID different from ID => /innerID-ID
                $newOrgElement.find('#resource-organization-site-contact\\/' + innerID + '-' + count).focus(getInvList);
            })
        });
        $newElement.attr('id', 'resource-' + count + '-section');
        $newElement.find('.neg-place-holder-org').each(function() {
            delOrg.apply($(this).children('img')[0]);
        });
        // $newElement.find('input').each(function(){
        //     $(this).val('');
        // })
        $newElement.insertBefore($buttonDiv);
        //create toggle
        $newElementToggle = $('<a href="#resource-' + count + '-section" class="large-12 section-toggle sub-section"><b class="caret"></b>Resource ' + count + '</a>');
        $newElementToggle.click(sectionToggle).insertBefore($newElement);
        displaySection($newElement);
    }

    function delRes() {
        $panel = $(this).closest(".resource");
        $('a[href="#' + $panel.attr('id') + '"]').remove();
        $panel.remove();
        removeTootlip.call(this);
    }

    function addOrg(callback) {
        var idReg = /(id="[a-zA-Z0-9-_\/]+\/)\d+(-\d+")/g;
        var forReg = /(for="[a-zA-Z0-9-_\/]+\/)\d+(-\d+")/g;
        var nameReg = /(name="[a-zA-Z0-9-_\/]+\/)\d+(-\d+")/g;
        var orgList = $(this).closest('.panel').find('.organization');
        var count = orgList.length;
        count++;
        var target = orgList.first().clone();
        var wrap = $(document.createElement('div'));
        wrap.append(target);
        var s = wrap.html();
        var newStr = s.replace(idReg, function(match, p1, p2) {
            return p1 + count + p2;
        })
        newStr = newStr.replace(forReg, function(match, p1, p2) {
            return p1 + count + p2;
        });
        newStr = newStr.replace(nameReg, function(match, p1, p2) {
            return p1 + count + p2;
        });

        var $buttonDiv = $(this).parent();
        var $newElement = $(newStr);
        var $closeButton = $('<img data-tooltip class="has-tip tip-top neg" src="img/neg.png" title="Remove this Organization">');
        $closeButton.click(delOrg).foundation();
        $newElement.find('.neg-place-holder-org').append($closeButton);
        $newElement.insertBefore($buttonDiv);
        if (typeof callback != 'undefined') callback($newElement, count);
    }

    function delOrg() {
        $panel = $(this).closest(".organization").remove();
        removeTootlip.call(this);
    }

    function activateSubType() {
        var ID = $(this).attr("id").match(/.*-(\d)/)[1];
        var val = $(this).val();
        var html = '';
        var $subtype = $('#resource-subtype-' + ID);
        var $subtypeText = $('#resource-subtype-text-' + ID);
        $('a[href="#' + $(this).closest('.resource').attr('id') + '"]').html('<b class="caret"></b>' + $(this).children('option[value="' + val + '"]').text());

        if (val == 'other') {
            $subtype.closest('.row').css('display', 'none');
            $subtypeText.closest('.row').css('display', 'block');
        }
        if (val == 'none' || val == 'other') {
            html = '<option value="">Please first choose resource type</option>'
            $subtype.html($(html))
            $subtype.prop('disabled', true);
            return;
        }
        if (val == 'biospecimen') {
            html = '<option value="blood">blood</option>' +
                '<option value="skin_punch">Skin Punch</option>' +
                '<option value="olfactory_biospy">Olfactory Biosp</option>'
        } else if (val == 'reprogrammed_cell_line') {
            html = '<option value="fibroblast_cell_lines">Fibroblast Cell Lines</option>';
        } else if (val == 'phenotype_date') {
            html = '<option value="iPSCs">iPSCs</option>' +
                '<option value="iNSC">iNSC</option>' +
                '<option value="iGPC">iGPC</option>' +
                '<option value="iOPC">iOPC</option>';
        } else if (val == 'gwas_date') {
            html = '<option value="blood">not implemented Yet</option>';
        } else if (val == 'sequence_data') {
            html = '<option value="WGS">WGS</option>' +
                '<option value="exome">Exome</option>';
        } else if (val == 'other_genetic_data') {
            methylome, transcriptome, CNV
            html = '<option value="methylome">Methylome</option>' +
                '<option value="transcriptome">Transcriptome</option>' +
                '<option value="CNV">CNV</option>';
        } else if (val == 'analyzed_data') {
            html = '<option value="none">none</option>';
        }
        $subtype.prop('disabled', false).html($(html));
        $subtype.closest('.row').css('display', 'block');
        $subtypeText.closest('.row').css('display', 'none');
    }

    function alterSecHeadingRes() {
        var $sectionToggle = $('a[href="#' + $(this).closest('.resource').attr('id') + '"]');
        var curHeading = $sectionToggle.html();
        var secondHeading;
        if ($(this).is('input')) {
            secondHeading = $(this).val();
        } else {
            secondHeading = $(this).children('option[value="' + $(this).val() + '"]').text();
        }
        $sectionToggle.html(curHeading.replace(/-.*/, "") + "-" + secondHeading);
    }

    function alterHeadingInv() {
        var $invPanel = $(this).closest('.investigator');
        var id = $(this).attr('id').match(/-(\d)$/)[1];
        var $sectionToggle = $('a[href="#' + $invPanel.attr('id') + '"]');
        var firstPart = $invPanel.find('input[id^=last-name-]').val();
        var secondPart = $invPanel.find('input[id^=first-name-]').val();
        var heading = firstPart;
        if (firstPart != "" && secondPart != "") {
            heading += ", ";
        }
        heading += secondPart;
        if (firstPart == "" && secondPart == "") {
            heading = "Investigator " + id;
        }
        $sectionToggle.html('<b class="caret"></b>' + heading);
    }

    function getInvList() {
        $contactSelector = $(this);
        $contactSelector.html('<option value="unknown">Unknown</option>');
        $('a[href^=#investigator-]').each(function() {
            var ID = $(this).attr("href").match(/.*-(\d)/)[1];
            $contactSelector.append($('<option value="' + ID + '">' + $(this).text() + '</option>'));
        });
    }

    function removeTootlip() {
        var sel = $(this).data('selector');
        $('span.tooltip').each(function() {
            if ($(this).data('selector') == sel) {
                $(this).remove();
            }
        });
    }
    $(".section-toggle").click(sectionToggle);
    $(".date-input").datepicker({
        changeMonth: true,
        changeYear: true
    });
    $("#investigator-add").click(addInv);
    $("#investigator-organization-add").click(function() {
        addOrg.apply(this)
    });
    $("#resource-add").click(addRes);
    $("#resource-organization-add").click(function() {
        addOrg.call(this, function($newElement, innerID) {
            //innerID different from ID => /innerID-ID
            $newElement.find('#resource-organization-site-contact\\/' + innerID + '-1').focus(getInvList);
        })
    });
    $("#resource-type-1").change(activateSubType)
    $("#resource-subtype-1").click(alterSecHeadingRes).change(alterSecHeadingRes);
    $("#resource-subtype-text-1").click(alterSecHeadingRes).change(alterSecHeadingRes);
    $("#resource-organization-site-contact\\/1-1").focus(getInvList);
    $("#first-name-1, #last-name-1").on('input', alterHeadingInv);
})
