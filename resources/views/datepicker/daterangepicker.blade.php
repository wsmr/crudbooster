<script type="text/javascript">
        $(function() {

    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            var start_date = start.format('YYYY-MM-DD');
            var end_date = end.format('YYYY-MM-DD');
            console.log(start_date,end_date);


            var start_datee = start.format('YYYYMMDD');
            var end_datee = end.format('YYYYMMDD');
            document.cookie = "start_datee = " + start_datee
            document.cookie = "end_datee = " + end_datee

          }

          $('#reportrange').daterangepicker({
            startDate: start,
            endDate: end,
            ranges: {
              'Today': [moment(), moment()],
              'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
              'Last 7 Days': [moment().subtract(6, 'days'), moment()],
              'Last 30 Days': [moment().subtract(29, 'days'), moment()],
              'This Month': [moment().startOf('month'), moment().endOf('month')],
              'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            }
          }, cb);

          cb(start, end);
        });
</script>
