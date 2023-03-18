function deletecb1(cbbbb) {
	let ok = confirm('정말 삭제하시겠습니까?');
	if (ok) {
		location.href = 'brand.delete.do?cb_name=' + cbbbb;
	}
}

$(document).ready(
		function($) {
			$(".carRegButton").on("click", function(event) { // 팝업오픈 버튼 누르면
				$("#carregpopup01").show(); // 팝업 오픈
				$("body").append('<div class="backon"></div>'); // 뒷배경 생성
			});

			$("body").on(
					"click",
					function(event) {
						if (event.target.className == 'close'
								|| event.target.className == 'backon') {
							$("#carregpopup01").hide(); // close버튼 이거나 뒷배경 클릭시
														// 팝업 삭제
							$(".backon").hide();
						}

					});

		});

$(document).ready(
		function($) {
			$(".brandRegButton").on("click", function(event) { // 팝업오픈 버튼 누르면
				$("#brandregpopup01").show(); // 팝업 오픈
				$("body").append('<div class="backon"></div>'); // 뒷배경 생성
			});

			$("body").on(
					"click",
					function(event) {
						if (event.target.className == 'close'
								|| event.target.className == 'backon') {
							$("#brandregpopup01").hide(); // close버튼 이거나 뒷배경
															// 클릭시 팝업 삭제
							$(".backon").hide();
						}

					});

		});

function deletecar(carrr) {
	let ok = confirm('정말 삭제하시겠습니까?');
	if (ok) {
		location.href = 'admin.car.delete.do?c_id=' + carrr;
	}

}

function updatecar(id, name, year1, year2, option, brand, ft, bt, print, fta,
		bta, c_file) {

	// c_bta_u나 c_fta_u에 값이 들어있는 경우
	if (fta || bta) {
		// ftbttmstyle3outdiv을 보이도록 설정
		const ftbttmstyle3outdiv = document
				.querySelector('.ftbttmstyle3outdiv');
		ftbttmstyle3outdiv.style.display = 'block';
	}

	$(document).ready(
			function($) {
				$(".updatecarbutton").on("click", function(event) { // 팝업오픈 버튼
																	// 누르면
					$("#updatecarpopup01").show(); // 팝업 오픈
					$("body").append('<div class="backon"></div>'); // 뒷배경 생성
				});

				$("body").on(
						"click",
						function(event) {
							if (event.target.className == 'close'
									|| event.target.className == 'backon') {
								$("#updatecarpopup01").hide(); // close버튼 이거나
																// 뒷배경 클릭시 팝업 삭제
								$(".backon").hide();
							}
						});

			});

	$('#c_id_u').val(id);
	$('#c_name_u').val(name);
	$('#c_year1_u').val(year1);
	$('#c_year2_u').val(year2);
	$('#c_print_u').val(print);
	$('#c_option_u').val(option);
	$('#c_brand_u').val(brand);
	$('#c_ft_u').val(ft);
	$('#c_bt_u').val(bt);
	$('#c_fta_u').val(fta);
	$('#c_bta_u').val(bta);
	$('#c_file_u').val(c_file);
	$('#c_file_u').attr('readonly', true);

}

function updatecb1(name, order) {

	$(document).ready(
			function($) {
				$(".updatecarbrandbutton").on("click", function(event) { // 팝업오픈
																			// 버튼
																			// 누르면
					$("#updatebrandpopup01").show(); // 팝업 오픈
					$("body").append('<div class="backon"></div>'); // 뒷배경 생성
				});

				$("body").on(
						"click",
						function(event) {
							if (event.target.className == 'close'
									|| event.target.className == 'backon') {
								$("#updatebrandpopup01").hide(); // close버튼
																	// 이거나 뒷배경
																	// 클릭시 팝업 삭제
								$(".backon").hide();
							}
						});

			});

	$('#cb_name_u').val(name);
	$('#cb_name_u').attr('readonly', true);
	$('#cb_order_u').val(order);

}


function addSize() {
	  var ftInput = '<div style="display: block;"><div class="ftinputstyle" style="float: left;"><input style="height: 30px; width:193px;" name="c_ft" id="c_ft" class="c_ftinput"></div></div>';
	  var btInput = '<div style="display: block;"><div class="btinputstyle" style="float: left;"><input style="height: 30px; width:193px;" name="c_bt" id="c_bt" class="c_btinput"></div></div>';
	  var tmInput = '<div class="tminputstyle" style="float: left;">' +
	    '<div class="admin-tire-size-reg-delete">' + '삭제</div>' + '</div>';
	  var sizeInputs = document.getElementById('sizeInputs');
	  var newInput =  '<div class="size-info">' +
	  	'<br>' +
	    '<br>' +
	    '<br>' +
	    '<br>' +
	   
	    '<div class="ftbttmstyle">' +
	    '<div class="ftstyle" style="height: 30px; width:200px; border: 1px solid white;">앞타이어</div>' +
	    '<div class="btstyle" style="height: 30px; width:200px; border: 1px solid white;">뒤타이어</div>' +
	    '<div class="tmstyle" style="height: 30px; width:200px; border: 1px solid white;">관리</div>' +
	    '</div>'  + ftInput + btInput + tmInput + '</div>';
	  sizeInputs.innerHTML += newInput;
	  
	  var deleteBtns = document.querySelectorAll('.admin-tire-size-reg-delete');
	  for (var i = 0; i < deleteBtns.length; i++) {
	    deleteBtns[i].addEventListener('click', function(e) {
	      e.target.closest('.size-info').remove();
	    });
	  }
	}