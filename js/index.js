$("#showText").click(function () {
    $.ajax({
        url: "./js/home.json",
        success: function (data) {
            $("#content").html(data[0].texto);
            $("#content").removeClass("d-none");
        },
    });
});

let counter = [0, 0, 0, 0, 0];

const views = document.querySelectorAll(".view");
const incrementsView = document.querySelectorAll(".incrementViews");

incrementsView[2].addEventListener("click", () => {
    counter[0]++;
    views[0].innerHTML = "Vistas: " + counter[0] + " " + '<i class="bi bi-eye"></i>';
});

incrementsView[0].addEventListener("click", () => {
    counter[1]++;
    views[1].innerHTML = "Vistas: " + counter[1] + " " + '<i class="bi bi-eye"></i>';
});

incrementsView[3].addEventListener("click", () => {
    counter[2]++;
    views[2].innerHTML = "Vistas: " + counter[2] + " " + '<i class="bi bi-eye"></i>';
});

incrementsView[1].addEventListener("click", () => {
    counter[3]++;
    views[3].innerHTML = "Vistas: " + counter[3] + " " + '<i class="bi bi-eye"></i>';
});

incrementsView[4].addEventListener("click", () => {
    counter[4]++;
    views[4].innerHTML = "Vistas: " + counter[4] + " " + '<i class="bi bi-eye"></i>';
});
