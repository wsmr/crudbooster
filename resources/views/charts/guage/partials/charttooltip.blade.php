// tooltip: {
//   position: function (data, width, height, element) {
//     var classInGraph = data[0].id.replace(/[ ]/g, '-'); // c3 uses values to turn them into classes and replaces all ' ' with '-'
//     var $diagram = $('.svg-diagram:not(.hidden)'); // this is a div container around the actual svg element, i tis positioned relative and will be the parent the absolute positioned tooltip orientates itseld on
//     var $lineOrBarContainer = base.isBarDiagramStyle ? $diagram.find('.c3-chart-bars') : $diagram.find('.c3-chart-lines'); // this is the container for either bars or lines
//     var $hoveredElementContainer = base.isBarDiagramStyle ? $lineOrBarContainer.find('[class*="c3-shapes-' + classInGraph + '"]') : $lineOrBarContainer.find('[class*= "c3-circles-' + classInGraph + '"]'); // this is the container where the hovered Element is in
//     var hoveredElement = $hoveredElementContainer.children().get(data[0].index); // the actual hovered element
//     var position = $(hoveredElement).position();
//     console.debug($(hoveredElement).position());
//     position.top = position.top - $(element).position().top - height;   // element's postion top is  the offset y of your chart (more or less)
//
//     if (position.left + width > parseInt($(element).attr('width'))) { // avoid overflow on the right
//       position.left = Math.max(position.left - width, 0); // avoid overflow on the left after correction
//     }
//     return position;
//   },
// }
