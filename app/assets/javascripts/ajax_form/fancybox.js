/**
 * display fancybox by ajax (load href as url)
 * @param href
 */
function fancybox(href) {
    $('#select2-drop').select2("close");
    $.fancybox({
            'href': href,
            'type': 'ajax',
            'transitionIn': 'elastic',
            // 'ajax': {
            //     complete: function(jqXHR, textStatus) {
            //         initSelect2Autocomplete($('div.fancybox-skin'));
            //         $(".chosen-input").select2({
            //             no_results_text: "未找到结果...",
            //             allow_single_deselect: true,
            //             placeholder_text_single: "Seleccione una opción",
            //             search_contains: true
            //         });
            //     }
            // }
        }
    );
}
