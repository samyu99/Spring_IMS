$(function() {
			$("#Product_Name").autocomplete({
				source: "productNamesAutocomplete", 
				minLength: 2,
				select: function(event, ui) {
					this.value = ui.item.label;
					$("#productname").val(ui.item.value);
					return false;
				}
			});
		});
		
		function calculateItemPrice() {
			  
		         var punit = parseInt(document.getElementById('priceperunit').value);
		         var qsold = parseInt(document.getElementById('quantitysold').value);
		        // window.print(${p});
		        var itemprice = punit*qsold;
		        document.getElementById('ip').value=itemprice;
		       


			}