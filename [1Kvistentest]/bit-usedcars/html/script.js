document.addEventListener("DOMContentLoaded", function () {
    function display(bool) {
        if (bool) {
            document.getElementById("body").style.display = "flex";
        } else {
            document.getElementById("body").style.display = "none";
        }
    }

    window.addEventListener('message', function (event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
                $("#container").show()
                $("#main").show()
                $("#alert").hide()
                $("#buyalert").hide()
                $("#vehicles").hide()
                $("#inspect").hide()
                $("#employees").hide()
                $("#contract").hide()
                clear()
                $("#menumain").find('svg path').attr('fill', 'white');
                $("#menumain").find('div').first().removeClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent').addClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent');
                $("#societymoney").text("$"+item.societymoney)
                $("#lastvehiclesell").text(item.lastsold)
                $("#vehiclesamount").text(item.vehiclesamount)
                var vehiclesList = item.vehicleslist
                var vehiclesDiv = $("#vehicleslist")
                vehiclesDiv.empty()
                if (typeof vehiclesList !== "undefined") {
                    vehiclesList.forEach(function (vehicle) {
                        var tuning = "NO"
                        if (vehicle.vehTuning == "1") {
                            tuning = "YES"
                        }
                        vehiclesDiv.append(`<div id="vehicleelement" class="flex gap-2 font-bold text-sm border border-slate-600 rounded">
                        <small class="w-[20%] flex justify-center text-white font-semibold">`+vehicle.name+`</small>
                        <div class="w-px h-3 bg-slate-600 mt-1"></div>
                        <small class="w-[15%] flex justify-center text-white font-semibold">`+tuning+`</small>
                        <div class="w-px h-3 bg-slate-600 mt-1"></div>
                        <small class="w-[20%] flex justify-center text-white font-semibold">`+vehicle.vehprops.plate+`</small>
                        <div class="w-px h-3 bg-slate-600 mt-1"></div>
                        <small class="w-[20%] flex justify-center text-white font-semibold">$`+vehicle.buyprice+`</small>
                        <div class="w-px h-3 bg-slate-600 mt-1"></div>
                        <small class="w-[20%] flex justify-center text-white font-semibold">$`+vehicle.price+`</small>
                    </div>`)
                    })
                };
                $("#employeesamount").text(item.totalemloyees)
                var employeesDiv = $("#employeeslist")
                employeesDiv.empty()
                employeesDiv.html(item.totalemployeeslist)
                var jobgradesdiv = $("#jobgrades")
                jobgradesdiv.empty()
                jobgradesdiv.html(item.jobgrade)
                if (item.isboss == true) {
                    $("#hiretitle").show()
                    $("#hirebox").show()
                    $("#employeeslist").css("height", "19rem");
                } else {
                    $("#hiretitle").hide()
                    $("#hirebox").hide()
                    $("#employeeslist").css("height", "23rem");
                }
            } else {
                display(false)
            }
        }
        if (item.type === "sellveh") {
            if (item.status == true) {
                display (true)
                $("#alert").show()
                $("#buyalert").hide()
                $("#inspect").hide()
                $("#container").hide()
                $("#contract").hide()
            } else {
                display (false)
            }
        }
        if (item.type === "inspect") {
            if (item.status == true) {
                display (true)
                $("#alert").hide()
                $("#buyalert").hide()
                $("#container").hide()
                $("#contract").hide()
                $("#inspect").show()
                $("#ibuycar").text(item.buttontext)
                $("#ibuycar").css("text-transform", "uppercase");
                $("#icarname").text(item.vehname)
                $("#engine").text(item.dataveh.engine)
                $("#turbo").text(item.dataveh.turbo)
                $("#antibullet").text(item.dataveh.armor)
                $("#brakes").text(item.dataveh.brakes)
                $("#iprice").text("$"+item.price)
                $("#speed").text(item.km+" km/h")
            } else {
                display (false)
            }
        }
        if (item.type === "buyveh") {
            if (item.status == true) {
                display (true)
                $("#buyalert").show()
                $("#alert").hide()
                $("#container").hide()
                $("#inspect").hide()
                $("#buyalerttitle").text(item.title)
                $("#buytext").text(item.text)
                $("#buyvehicle").text(item.confirm)
                $("#nobuyvehicle").text(item.cancel)
                $("#contract").hide()
            } else {
                display (false)
            }
        }
        if (item.type === "opencontract") {
            if (item.status == true) {
                if (item.user == "seller") {
                    display (true)
                    $("#contract").show()
                    $("#container").hide()
                    $("#inspect").hide()
                    $("#alert").hide()
                    $("#buyalert").hide()
                    $("#signseller").hide()
                    $("#signbuyer").hide()
                    $("#buttonbuyer").hide()
                    $("#buttonseller").show()
                    $("#buyertitle").hide()
                    $("#contracttext").html(`
                        <b>BETWEEN:</b><br>
                        <b>`+item.username+`</b>, with ID <b>`+item.id+`</b> (hereinafter referred to as "the Seller"), and Larry's, a second-hand vehicle dealership, located at Route 68, Harmony, Blaine County (hereinafter referred to as "the Buyer").
                        <br><br>

                        <b>PREAMBLE:</b><br>

                        The Seller is the legitimate owner of the vehicle described in this contract and wishes to sell it. The Buyer, Larry's, is interested in purchasing said vehicle for its second-hand car dealership. Both parties wish to formalize this transaction under the terms and conditions specified below.
                        <br><br>

                        <b>AGREEMENT:</b><br>

                        <b>1. Vehicle Description:</b><br>
                        The Seller agrees to sell and the Buyer agrees to purchase the vehicle described as <b>`+item.vehiclemodel+`</b>, with license plate number <b>`+item.plate+`</b>.

                        <br><br><b>2. Price and Payment Method:</b><br>
                        A sales price of <input id="inputprice" style="width:5rem;color:black;" class="h-6 px-2 rounded bg-transparent border border-slate-600 text-[0.9rem] font-bold outline-none" type="text" placeholder=""> has been agreed upon. The Buyer shall make payment by bank transfer at the time of signing this contract.

                        <br><br><b>3. Condition and Delivery of the Vehicle:</b><br>
                        The Seller declares that the vehicle is in the stated condition and free from hidden charges or encumbrances. The Buyer has the right to inspect the vehicle prior to purchase.

                        <br><br><b>4. Transfer of Ownership:</b><br>
                        Ownership of the vehicle will be transferred from the Seller to the Buyer once the full payment is made and all conditions of this contract are met.

                        <br><br><b>5. Warranties and Responsibilities:</b><br>
                        The Buyer accepts the vehicle "as is," waiving any subsequent claims related to its condition.


                        <br><br><b>SIGNATURES OF THE PARTIES:</b><br><br>
                    `)
                } else if (item.user == "buyer") {
                    display (true)
                    $("#contract").show()
                    $("#inspect").hide()
                    $("#container").hide()
                    $("#alert").hide()
                    $("#buyalert").hide()
                    $("#signseller").hide()
                    $("#signbuyer").hide()
                    $("#buttonseller").hide()
                    $("#signseller").show()
                    $("#signseller").text(item.username)
                    $("#sellertitle").text("Buyer")
                    $("#buyertitle").text("Seller")
                    $("#contracttext").html(`
                        <b>BETWEEN:</b><br>
                        <b>`+item.username+`</b>, with ID <b><span id="sellid">`+item.id+`</b> (hereinafter referred to as "the Seller"), and Larry's, a second-hand vehicle dealership, located at Route 68, Harmony, Blaine County (hereinafter referred to as "the Buyer").
                        <br><br>

                        <b>PREAMBLE:</b><br>

                        The Seller is the legitimate owner of the vehicle described in this contract and wishes to sell it. The Buyer, Larry's, is interested in purchasing said vehicle for its second-hand car dealership. Both parties wish to formalize this transaction under the terms and conditions specified below.
                        <br><br>

                        <b>AGREEMENT:</b><br>

                        <b>1. Vehicle Description:</b><br>
                        The Seller agrees to sell and the Buyer agrees to purchase the vehicle described as <b>`+item.vehiclemodel+`</b>, with license plate number <b><span id="sellplate">`+item.plate+`</span></b>.

                        <br><br><b>2. Price and Payment Method:</b><br>
                        A sales price of <b><span id="sellprice">`+item.price+`</span></b> has been agreed upon. The Buyer shall make payment by bank transfer at the time of signing this contract.

                        <br><br><b>3. Condition and Delivery of the Vehicle:</b><br>
                        The Seller declares that the vehicle is in the stated condition and free from hidden charges or encumbrances. The Buyer has the right to inspect the vehicle prior to purchase.

                        <br><br><b>4. Transfer of Ownership:</b><br>
                        Ownership of the vehicle will be transferred from the Seller to the Buyer once the full payment is made and all conditions of this contract are met.

                        <br><br><b>5. Warranties and Responsibilities:</b><br>
                        The Buyer accepts the vehicle "as is," waiving any subsequent claims related to its condition.


                        <br><br><b>SIGNATURES OF THE PARTIES:</b><br><br>
                    `)
                    $("#buttonbuyer").show()
                }
            } else {
                display (false)
            }
        }
    })

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://bit-usedcars/exit', JSON.stringify({}));
            return
        }
    };

    function clear() {
        $("#menumain").find('svg path').attr('fill', '#3C4756');
        $("#menumain").find('div').first().removeClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent').addClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent');
        $("#menuvehicles").find('svg path').attr('fill', '#3C4756');
        $("#menuvehicles").find('div').first().removeClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent').addClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent');
        $("#menuemployees").find('svg path').attr('fill', '#3C4756');
        $("#menuemployees").find('div').first().removeClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent').addClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent');
    }    

    $(document).on("click", "#menumain", function(){
        $("#main").show()
        $("#vehicles").hide()
        $("#employees").hide()
        clear()
        $(this).find('svg path').attr('fill', 'white');
        $(this).find('div').first().removeClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent').addClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent');
    });

    $(document).on("click", "#menuvehicles", function(){
        $("#main").hide()
        $("#vehicles").show()
        $("#employees").hide()
        clear()
        $(this).find('svg path').attr('fill', 'white');
        $(this).find('div').first().removeClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent').addClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent');
    });

    $(document).on("click", "#menuemployees", function(){
        $("#main").hide()
        $("#vehicles").hide()
        $("#employees").show()
        clear()
        $(this).find('svg path').attr('fill', 'white');
        $(this).find('div').first().removeClass('border-slate-600 rounded-md bg-gradient-to-t from-slate-600/60 to-transparent').addClass('border-emerald-400 rounded-md bg-gradient-to-t from-emerald-400/60 to-transparent');
    });

    $(document).on("click", "#menuexit", function(){
        $.post('https://bit-usedcars/exit', JSON.stringify({}));
    });

    $(document).on("click", "#sellvehicle", function(){
        var name = $("#vehiclename").val()
        var buyprice = $("#purchaseprice").val()
        var price = $("#vehicleprice").val()
        var tuning = $("#vehicletuning").val()
        $.post('https://bit-usedcars/sellcallback', JSON.stringify({name: name, price: price, tuning: tuning, buyprice: buyprice}));
    });

    $(document).on("click", "#buyvehicle", function(){
        $.post('https://bit-usedcars/buycallback', JSON.stringify({}));
    });

    $(document).on("click", "#nobuyvehicle", function(){
        $.post('https://bit-usedcars/exit', JSON.stringify({}));
    });

    $(document).on("click", "#buttonseller", function(){
        var price = $("#inputprice").val()
        $.post('https://bit-usedcars/contractseller', JSON.stringify({price:price}));
    });
    
    $(document).on("click", "#buttonbuyer", function(){
        var id = $("#sellid").text()
        var plate = $("#sellplate").text()
        var price = $("#sellprice").text()
        $.post('https://bit-usedcars/contractbuyer', JSON.stringify({id:id, plate:plate, price:price}));
    });

    $(document).on("click", "#hirebutton", function(){
        var id = $("#hireid").val()
        var grade = $("#jobgrades").val()
        $.post('https://bit-usedcars/hireemployee', JSON.stringify({id:id, grade:grade}));
    });

    $(document).on("click", "#fire", function(){
        var license = $(this).attr('data-value')
        $.post('https://bit-usedcars/fireemployee', JSON.stringify({license:license}));
    });

    $(document).on("click", "#icancel", function(){
        $.post('https://bit-usedcars/exit', JSON.stringify({}));
    });

    $(document).on("click", "#ibuycar", function(){
        $.post('https://bit-usedcars/ibuycar', JSON.stringify({}));
    });

    $(document).on("click", "#camera", function(){
        $.post('https://bit-usedcars/changecamera', JSON.stringify({}));
    });

});