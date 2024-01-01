import osmnx as ox
import pickle
ox.config(use_cache=True, log_console=True)

G2 = pickle.load(open('data/durres-routes.pkl', 'rb'))
print(G2)

