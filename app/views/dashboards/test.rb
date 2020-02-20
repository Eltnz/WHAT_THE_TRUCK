<div class="card-product">
  <img src=".jpg" />
  <div class="card-product-infos">
<% booking = Booking.where(["food_truck_id = ?", foodtruck_id]) %>
            <% foodtruck = FoodTruck.find([foodtruck_id]) %>
            <h3><%= foodtruck[0].name%></h3>
            <p> Du <%= booking[0].start_date.day %>/<%= booking[0].start_date.month %>/<%= booking[0].start_date.year %> au <%= booking[0].end_date.day %>/<%= booking[0].end_date.month%>/<%= booking[0].end_date.year %></p>
            <p>TOTAL :
              <%= booking[0].total_price %> €</p>
          <% end %>


<% booking = Booking.where(["food_truck_id = ?", foodtruck_id]) %>
            <% foodtruck = FoodTruck.find([foodtruck_id]) %>
            <h3><%= foodtruck[0].name%></h3>
            <p> Du <%= booking[0].start_date.day %>/<%= booking[0].start_date.month %>/<%= booking[0].start_date.year %> au <%= booking[0].end_date.day %>/<%= booking[0].end_date.month%>/<%= booking[0].end_date.year %></p>
            <p>TOTAL :
              <%= booking[0].total_price %> €</p>
          <% end %>



<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
        <div class="card-body">
          <h2> My foodtrucks :</h2>
            <% @bookings = [] %>
            <% @foodtrucks.each do |foodtruck| %>
              <h3><strong><%= foodtruck.name%> :</strong></h3><br>
              <%= foodtruck.city%> <br>
              <%= foodtruck.category%> <br>
              <%= foodtruck.price_per_day%> <br>
              <%= foodtruck.menu%> <br><br>
              <% @bookings << foodtruck.id %>
            <% end %>
        </div>
</div>
