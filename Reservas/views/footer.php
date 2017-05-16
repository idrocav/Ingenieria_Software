
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017 Sistemín de reservas online, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo SITE_URL ?>/assets/js/bootstrap.min.js"></script>
<?php
  if($scripts_js)
  {
    foreach ($scripts_js as $script) {
?>
    <script type="text/javascript" src="<?php echo SITE_URL ?>/assets/js/<?php echo $script ?>.js"></script>
<?php
    }
  }
?>
      

  </body>
</html>