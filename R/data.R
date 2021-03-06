#' Cleaned OkCupid profile data
#'
#' Cleaned profile data 59,946 OkCupid users who were living within 25 miles of
#' San Francisco, had active profiles on June 26, 2012, were online in the
#' previous year, and had at least one picture in their profile. The original
#' data and codebook can be found at \url{https://github.com/rudeboybert/JSE_OkCupid}.
#'
#' @details The differences between the cleaned and original version of profiles data are:
#' \describe{
#' \item{Essay Responses}{Due to file size restrictions, only the first 140
#' characters of each user's first essay response (my self summary) is included}
#' \item{Missing \code{income} values}{Previously coded as \code{-1}, they are now
#' coded as \code{NA}}
#' \item{All other missing values}{Previously coded as \code{""}, they are now coded
#' as \code{NA}}
#' \item{\code{offspring} and \code{sign}}{String instances of \code{"?&rsquo;"} are
#' replaced with apostrophes}
#' \item{\code{last_online}}{Date/time strings are converted to \code{USA/Pacific} timezone
#' POSIXct date-time objects using \link[lubridate]{parse_date_time}}
#' }
#' @format A \code{data.frame} with 59946 rows and 22 variables:
#' \describe{
#'   \item{age}{Age}
#'   \item{body_type}{Body type}
#'   \item{diet}{Dietary habits}
#'   \item{drinks}{Drinking habits}
#'   \item{drugs}{Drug usage habits}
#'   \item{education}{Education level}
#'   \item{ethnicity}{Ethnicity}
#'   \item{height}{Height in inches}
#'   \item{income}{Income}
#'   \item{job}{Job}
#'   \item{last_online}{Date/time of last login to OkCupid}
#'   \item{location}{Location}
#'   \item{offspring}{Number of offspring}
#'   \item{orientation}{Sexual orientation}
#'   \item{pets}{Number of pets}
#'   \item{religion}{Religious affiliation}
#'   \item{sex}{Sex. Note at the time OkCupid only allowed for male/female binary. This has since been relaxed.}
#'   \item{sign}{Astrological sign}
#'   \item{smokes}{Smoking habits}
#'   \item{speaks}{Languages spoken}
#'   \item{status}{Relationship status}
#'   \item{essay0}{Response to first essay question (my self summary), trimmed to 140 characters}
#' }
#' @source \url{https://github.com/rudeboybert/JSE_OkCupid}
#' @examples
#' library(okcupiddata)
#' data(profiles)
#' # If using RStudio:
#' # View(profiles)
#' summary(profiles$income)
"profiles"
