
<li class="nav-item menu-open">
         <!--   <a href="" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
			</li>

      <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
               User Management
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="add-admin.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Users</p>
                </a>
              </li>

			   <li class="nav-item">
                <a href="admin-record.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Users Record</p>
                </a>
              </li>
             </ul>
          </li>
	    
		-->


		   <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
               Student Management
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <?php if ($_SESSION['category'] === 'hod') { ?>
    <li class="nav-item">
      <a href="add-student.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Register Student</p>
      </a>
    </li>
    <?php } ?>
    <?php if ($_SESSION['category'] === 'dean') { ?>
    <li class="nav-item">
      <a href="add-student.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Register Student</p>
      </a>
    </li>
  <?php } ?>
			   <li class="nav-item">
                <a href="student-record.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Student Record</p>
                </a>
              </li>

            <!-- Menu items specific to admins -->
  <?php if ($_SESSION['category'] === 'library') { ?>
    <li class="nav-item">
      <a href="example_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Library Clearance</p>
      </a>
    </li>
    <?php } ?>
    <?php if ($_SESSION['category'] === 'ssa') { ?>
    <li class="nav-item">
      <a href="ssa_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Secretary Student Affairs Clearance</p>
      </a>
    </li>
  <?php } ?>
  <?php if ($_SESSION['category'] === 'bursar') { ?>
    <li class="nav-item">
      <a href="dbursar_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Bursary Clearance</p>
      </a>
    </li>
  <?php } ?>
  <?php if ($_SESSION['category'] === 'sport') { ?>
    <li class="nav-item">
      <a href="sport_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Sport Clearance</p>
      </a>
    </li>
  <?php } ?>
  <?php if ($_SESSION['category'] === 'hall_admin') { ?>
    <li class="nav-item">
      <a href="hostel_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Hostel Clearance</p>
      </a>
    </li>
  <?php } ?>
  <?php if ($_SESSION['category'] === 'hoc') { ?>
    <li class="nav-item">
      <a href="clinic_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Clinic Clearance</p>
      </a>
    </li>
  <?php } ?>
  <?php if ($_SESSION['category'] === 'hod') { ?>
    <li class="nav-item">
      <a href="hod_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Department Clearance</p>
      </a>
    </li>
  <?php } ?>
  <?php if ($_SESSION['category'] === 'dean') { ?>
    <li class="nav-item">
      <a href="dean_clearance.php" class="nav-link">
        <i class="far fa-circle nav-icon"></i>
        <p>Faculty Clearance</p>
      </a>
    </li>
    <!-- Add more menu items specific to librarian as needed -->
  <?php } ?>
             </ul>
          </li>
	    
  <!--        
		
	 <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
               Fee Management
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>

            <ul class="nav nav-treeview">

            			   <li class="nav-item">
                <a href="add-fee.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Fee</p>
                </a>
              </li>

              <li class="nav-item">
                <a href="fee-record.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>payment History</p>
                </a>
              </li>

			     </ul>
          </li>
  -->
          <li class="nav-item">
            <a href="changepassword.php" class="nav-link">
              <p>Change Password      </p>
            </a>
          </li>	
		  
      
		  
		   <li class="nav-item">
            <a href="logout.php" class="nav-link">
              <i class="fa fa-sign-out-alt"></i>
              <p>
Logout
              </p>
            </a>
          </li>	
				<li class="nav-item">
            <a href="../login.php" class="nav-link">
       <i class='fas fa-exchange-alt' style='font-size:18px;color:red'></i>
                 <p class="text">Switch To Student</p>
            </a>
          </li>	
				 <p class="text"></p>
		  <p class="text"></p>
		  <p class="text"></p>
		  <p class="text"></p>
		   <p class="text"></p>
		  <p class="text"></p>
		  <p class="text"></p>
		  <p class="text"></p>
				 
          </li>
		  