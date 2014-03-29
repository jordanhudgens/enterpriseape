class InvoiceSearch
  attr_reader :date_from, :date_to
  
  def initialize(params)
    params ||= {}
    @date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s)
    @date_to = parsed_date(params[:date_to], Date.today.to_s)
  end
  
  def scope
    Invoice.where('date BETWEEN ? AND ?', @date_from, @date_to)
  end
  
  private
  
  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end
  
end