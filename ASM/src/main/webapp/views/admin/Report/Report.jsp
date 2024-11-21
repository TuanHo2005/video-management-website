<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container mt-4">
    <!-- Tabs for User Edition and User List -->
    <div class="tab-custom">
         <ul class="nav nav-tabs" id="reportTabs" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="favorites-tab" data-bs-toggle="tab" data-bs-target="#favorites" type="button" role="tab" aria-controls="favorites" aria-selected="true">Favorites</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="favorite-users-tab" data-bs-toggle="tab" data-bs-target="#favorite-users" type="button" role="tab" aria-controls="favorite-users" aria-selected="false">Favorite Users</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="shared-friends-tab" data-bs-toggle="tab" data-bs-target="#shared-friends" type="button" role="tab" aria-controls="shared-friends" aria-selected="false">Shared Friends</button>
            </li>
        </ul>
        <div class="tab-content" id="userTabContent">
            <!-- User Edition Tab -->
            <div class="tab-pane fade show active" id="favorites" role="tabpanel" aria-labelledby="favorites-tab">
                <div class="card">
                    <div class="card-body">
                        <h5>Favorites</h5>
                        <table class="table table-bordered">
                            <thead class="table-secondary">
                                <tr>
                                    <th>Video Title</th>
                                    <th>Favorite Count</th>
                                    <th>Latest Date</th>
                                    <th>Oldest Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Lâu ghé mới gặp</td>
                                    <td>100</td>
                                    <td>31/12/2020</td>
                                    <td>01/01/2020</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- User List Tab -->
             <div class="tab-pane fade" id="favorite-users" role="tabpanel" aria-labelledby="favorite-users-tab">
                <div class="card">
                    <div class="card-body">
                        <h5>Favorite Users</h5>
                        <div class="mb-3">
                            <label for="videoTitleSelect" class="form-label">Video Title</label>
                            <select id="videoTitleSelect" class="form-select">
                                <option selected>Lâu ghé mới gặp</option>
                                <!-- Add other options here -->
                            </select>
                        </div>
                        <table class="table table-bordered">
                            <thead class="table-secondary">
                                <tr>
                                    <th>Username</th>
                                    <th>Fullname</th>
                                    <th>Email</th>
                                    <th>Favorite Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>TeoNV</td>
                                    <td>Nguyễn Văn Tèo</td>
                                    <td>teonv@gmail.com</td>
                                    <td>01/01/2020</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
             <!-- Shared Friends Tab -->
            <div class="tab-pane fade" id="shared-friends" role="tabpanel" aria-labelledby="shared-friends-tab">
                <div class="card">
                    <div class="card-body">
                        <h5>Shared Friends</h5>
                        <div class="mb-3">
                            <label for="videoTitleSelect2" class="form-label">Video Title</label>
                            <select id="videoTitleSelect2" class="form-select">
                                <option selected>Lâu ghé mới gặp</option>
                                <!-- Add other options here -->
                            </select>
                        </div>
                        <table class="table table-bordered">
                            <thead class="table-secondary">
                                <tr>
                                    <th>Sender Name</th>
                                    <th>Sender Email</th>
                                    <th>Receiver Email</th>
                                    <th>Sent Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Nguyễn Văn Tèo</td>
                                    <td>teonv@gmail.com</td>
                                    <td>poly@gmail.com</td>
                                    <td>01/01/2020</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
            
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
