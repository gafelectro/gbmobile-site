package webpage

class Carousel {
	Integer carouselid
	Integer carouselOrder
	static hasMany = [slides:Slide,modals:Modal]

    static constraints = {
    }
}
