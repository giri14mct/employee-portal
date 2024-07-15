module BillsHelper
  def formatted_date(bill)
    bill.strftime("%d-%m-%Y")
  end
end
