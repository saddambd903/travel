<!-- JQUERY JS -->
<script src="{{asset('/')}}assets/plugins/jquery/jquery.min.js"></script>
<!-- BOOTSTRAP JS -->
<script src="{{asset('/')}}assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="{{asset('/')}}assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- SIDE-MENU JS -->
<script src="{{asset('/')}}assets/plugins/sidemenu/sidemenu.js"></script>
<!-- Perfect SCROLLBAR JS-->
<script src="{{asset('/')}}assets/plugins/p-scroll/perfect-scrollbar.js"></script>
<script src="{{asset('/')}}assets/plugins/p-scroll/pscroll.js"></script>
<!-- STICKY JS -->
<script src="{{asset('/')}}assets/js/sticky.js"></script>
<!-- APEXCHART JS -->
<script src="{{asset('/')}}assets/js/apexcharts.js"></script>

<!-- INTERNAL SELECT2 JS -->
<script src="{{asset('/')}}assets/plugins/select2/select2.full.min.js"></script>
<!-- CHART-CIRCLE JS-->
<script src="{{asset('/')}}assets/plugins/circle-progress/circle-progress.min.js"></script>
<!-- INTERNAL DATA-TABLES JS-->
<script src="{{asset('/')}}assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="{{asset('/')}}assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
<script src="{{asset('/')}}assets/plugins/datatable/dataTables.responsive.min.js"></script>
<!-- INDEX JS -->
<script src="{{asset('/')}}assets/js/index1.js"></script>
<script src="{{asset('/')}}assets/js/index.js"></script>
<!-- Reply JS-->
<script src="{{asset('/')}}assets/js/reply.js"></script>
<!-- COLOR THEME JS -->
<script src="{{asset('/')}}assets/js/themeColors.js"></script>
<!-- CUSTOM JS -->
<script src="{{asset('/')}}assets/js/custom.js"></script>
<!-- SWITCHER JS -->
<script src="{{asset('/')}}assets/switcher/js/switcher.js"></script>
<!-- INTERNAL Summernote Editor js -->
<script src="{{asset('/')}}assets/admin/plugins/summernote-editor/summernote1.js"></script>
<script src="{{asset('/')}}assets/admin/js/summernote.js"></script>
{{--<script>--}}
{{--    $(document).ready(function() {--}}
{{--        $('.summernote').summernote();--}}
{{--    });--}}

{{--</script>--}}
<script src="https://cdn.ckeditor.com/4.19.0/standard/ckeditor.js"></script>
    <script>
    CKEDITOR.replace('summary-ckeditor', {
        filebrowserUploadUrl: "{{route('upload', ['_token' => csrf_token() ])}}",
        filebrowserUploadMethod: 'form'
    });
    </script> 