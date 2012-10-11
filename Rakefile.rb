task :default => :radio

desc "Lanzamos radio.rb con Ruby"
task :radio do
  sh "ruby -Ilib bin/ejecutable.rb 5"
end

desc "Lanzamos radio.rb con Test Unit"
task :test do
  sh "ruby -Ilib test/tc_radio.rb"
end

desc "Limpieza de temporales"
task :limpiar do
  sh "rm -fr *.gz *~ *swp"
end
